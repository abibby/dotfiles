package main

import (
	"fmt"
	"os"
	"os/exec"
	"strings"
)

type Port struct {
	SyncID          string
	SyncDescription string
	Name            string
	Description     string
}

func (p *Port) Activate() {
	err := exec.Command("pactl", "set-sink-port", p.SyncID, p.Name).Run()
	check(err)
}

func check(err error) {
	if err != nil {
		fmt.Fprintf(os.Stderr, "%+v\n", err)
		os.Exit(1)
	}
}

func main() {
	ports := getPorts()
	// ports[1].Activate()
	strPorts := []string{}
	for _, port := range ports {
		strPorts = append(strPorts, fmt.Sprintln(port.SyncDescription, port.SyncID, port.Name))
	}

	i, ok := dmenu(strPorts)
	if !ok {
		return
	}
	ports[i].Activate()
}

func getPorts() []Port {
	b, err := exec.Command("pactl", "list", "sinks").Output()
	check(err)

	ports := []Port{}

	lines := strings.Split(string(b), "\n")

	id := ""
	description := ""

	inPorts := false

	for _, line := range lines {
		if s, ok := extract(line, "Sink #"); ok {
			id = s
		} else if s, ok := extract(line, "\tDescription: "); ok {
			description = s
		} else if strings.HasPrefix(line, "\tPorts:") {
			inPorts = true
		} else if inPorts {
			if s, ok := extract(line, "\t\t"); ok {
				parts := strings.SplitN(s, ": ", 2)
				ports = append(ports, Port{
					SyncID:          id,
					SyncDescription: description,
					Name:            parts[0],
					Description:     parts[1],
				})
			} else {
				inPorts = false
			}
		}
	}
	return ports
}

func extract(line, start string) (string, bool) {
	if !strings.HasPrefix(line, start) {
		return "", false
	}
	return line[len(start):], true
}

func dmenu(list []string) (int, bool) {
	cmd := exec.Command("dmenu")
	stdin, err := cmd.StdinPipe()
	check(err)
	for _, op := range list {
		fmt.Fprintf(stdin, "%s", op)
	}
	check(stdin.Close())
	b, err := cmd.Output()
	check(err)

	for i, op := range list {
		if op == string(b) {
			return i, true
		}
	}
	return 0, false
}
