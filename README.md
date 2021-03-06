# System Capture

Simple Golang application to capture system details when thresholds are reached, good for troubleshooting.

```
# Linux example
git clone https://github.com/electronicsleep/SystemCapture.git && cd SystemCapture/bin && nohup ./SystemCapture-Linux
```

```
# MacOS example
git clone https://github.com/electronicsleep/SystemCapture.git && cd SystemCapture/bin && nohup ./SystemCapture-MacOS
```

Update with your own commands to capture info, search for CMD:

Ever want to capture system info during a spike? This is for you.

Useful for keeping an eye on processes running using CPU (similar to SAR report)

Threshold automatically set to the CPU cores on the system. (will only capture when load is high)

**Checks:** w, top, netstat -ta, ps -ef, ps, df

**Verbose Checks:** regular checks + vmstat, lsof, iostat

Using docker for tests.

Raise threshold to desired level or use auto NumCPU option to log details.

Tested with Ubuntu / Debian Linux and MacOS Sierra.

Should work on all Linux and MacOS versions.

```
# Run
go run SystemCapture.go

# Always capture
go run SystemCapture.go -t

# Run with webserver:
# http://localhost:8080/logs
go run SystemCapture.go -t -w

# Build for Linux
GOOS=linux go build SystemCapture.go

# Docker env Alpine
bash docker-start.sh

# Run background
nohup go run SystemCapture.go
```

# Resources

https://golang.org
