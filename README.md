# Philter CLI

The **Philter CLI** is a tool to interact with [Philter](https://www.mtnfog.com/products/philter/) from the command line. Use it to send files to Philter for identification and removal of sensitive information.

Executables are available on the [Releases](https://github.com/mtnfog/philter-cli/releases) page.

All operations can be achieved through the use of a tool like `cURL` but this project aims to provide a more user-friendly experience.

This project uses the [philter-sdk-golang](https://github.com/mtnfog/philter-sdk-golang) library.

[![Build Status](https://travis-ci.org/mtnfog/philter-cli.svg?branch=master)](https://travis-ci.org/mtnfog/philter-cli)

## Usage

Send the content of `input.txt` to Philter for processing. The filtered text will be written to standard out.

```
./philter-cli-linux-amd64 -h https://54.81.15.61:8080 -f input.txt
```

Send the content of `input.txt` to Philter for processing with explanation. The explanation containing the filtered text will be written to standard out as JSON.

```
./philter-cli-linux-amd64 -h https://54.81.15.61:8080 -f input.txt -e
```

Read the input from stdin and send the text to Philter. The filtered text will be written to stdout.

```
echo "The SSN was 123-45-6789." | ./philter-cli-linux-amd64 -h https://54.81.15.61:8080
```

Or cat the input from a file:

```
cat input.txt | ./philter-cli-linux-amd64 -h https://54.81.15.61:8080
```

Read text from a file through stdin and write the filtered text to a different file:

```
cat input.txt | ./philter-cli-linux-amd64 -h https://54.81.15.61:8080 > filtered.txt
```

All options:

```
  -c string
    	The context (optional). (default "default")
  -d string
    	The document ID (optional). (default "default")
  -e	Explain (optional).
  -f string
    	The file to process. (default "file")
  -h string
    	Philter API endpoint, e.g. https://localhost:8080/api (default "https://localhost:8080/api")
  -i	Ignore certificate errors.
  -p string
    	The filter profile (optional). (default "default")
  -v	Show version.
```

## License

This project is licensed under the Apache License, version 2.0.

Copyright 2020 Mountain Fog, Inc. Philter is a registered trademark of Mountain Fog, Inc.
