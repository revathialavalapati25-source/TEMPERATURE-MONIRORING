# Temperature Monitoring System using Verilog

## Overview

This project implements a Temperature Monitoring System using Verilog HDL. The system continuously monitors the input temperature and indicates whether it is LOW, NORMAL, or HIGH based on predefined threshold values. An alarm is activated whenever the temperature exceeds the safe operating limit. The design is verified using a comprehensive testbench and simulation.

## Features

- Real-time temperature monitoring
- Low, Normal, and High temperature detection
- High temperature alarm
- Reset functionality
- Simple combinational logic design
- Simulation and waveform verification

## Inputs

| Signal | Description |
|---------|-------------|
| reset | System Reset |
| temperature[7:0] | Temperature Sensor Input |

## Outputs

| Signal | Description |
|---------|-------------|
| low | Low temperature indicator |
| normal | Normal temperature indicator |
| high | High temperature indicator |
| alarm | High temperature alarm |

## Temperature Range

0–24°C → LOW

25–39°C → NORMAL

40°C and above → HIGH (Alarm ON)

## Tools Used

- Verilog HDL
- ModelSim
- Vivado
- GTKWave

## Simulation

The testbench verifies:
- Reset operation
- Low temperature detection
- Normal temperature detection
- High temperature detection
- Alarm activation