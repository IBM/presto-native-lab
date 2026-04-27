# Running pbench

At this point, you should already have a Presto C++ or Presto Java cluster running.

## 1. Download pbench

### 1.1 Download the pbench tar

Download the `pbench` tar for your platform below. This contains the compiled `pbench` binary and the relevant benchmark
configuration files.

- [MacOS (x64)](https://github.com/prestodb/pbench/releases/download/v1.1/pbench_darwin_amd64.tar.gz)
- [MacOS (aarch64)](https://github.com/prestodb/pbench/releases/download/v1.1/pbench_darwin_arm64.tar.gz)
- [Linux (x64)](https://github.com/prestodb/pbench/releases/download/v1.1/pbench_linux_amd64.tar.gz)
- [Linux (aarch64)](https://github.com/prestodb/pbench/releases/download/v1.1/pbench_linux_arm64.tar.gz)

### 1.2 Extract pbench

Extract the downloaded tar.gz file and change into the created `pbench` directory in a
new terminal window.

```bash
cd pbench
```

## 2. Run pbench

Once in the `pbench` directory, run pbench with `./pbench run` and specify the benchmark configuration files
related to the run. This example uses the `sf1` scale factor and `tpch` run flavor, which runs all 22 TPCH queries
sequentially. Change the `catalog` to `hive` and `schema` to `tpch` in the `json` configuration file `benchmarks/tpch/sf1.json`.

For Presto C++:
```bash
time ./pbench run benchmarks/native_oss.json benchmarks/tpch/sf1.json benchmarks/tpch/tpch.json 2>&1 | tee native-hive.log
```

For Presto Java:
```bash
time ./pbench run benchmarks/java_oss.json benchmarks/tpch/sf1.json benchmarks/tpch/tpch.json 2>&1 | tee java-hive.log
```

You should see logs for each query being submitted and the results, including execution time and row count.

You can use [jq](https://jqlang.org/) command to capture the `query_file` and `duration_in_seconds` fields from the log file:
```bash
grep 'duration_in_seconds' native-hive.log | jq -r '"\(.query_file), \(.duration_in_seconds)"' > native-hive.csv

grep 'duration_in_seconds' java-hive.log | jq -r '"\(.query_file), \(.duration_in_seconds)"' > java-hive.csv
```

If you are running this on a Mac or Linux machine, you can use the following command to calculate the average query
execution time:
```bash
awk -F',' '{sum+=$2; ++n} END { print "Avg: "sum/n }' native-hive.csv
awk -F',' '{sum+=$2; ++n} END { print "Avg: "sum/n }' java-hive.csv
```

Supplying different json files allow you to run different benchmarks. For more information on this format, visit the
[pbench wiki](https://github.com/prestodb/pbench/wiki/Configuring-PBench).

### Troubleshooting

If you see a permissions pop-up that prevents running `pbench` on MacOS, run the following command on the downloaded
`.tar.gz` file before extracting:

```bash
xattr -d com.apple.quarantine pbench_darwin_arm64.tar.gz
```
Change this command depending on the `pbench` file you downloaded.
