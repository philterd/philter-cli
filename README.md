# Philter CLI

The **Philter CLI** is a tool to interact with Philter.

[![Build Status](https://travis-ci.org/mtnfog/philter-cli.svg?branch=master)](https://travis-ci.org/mtnfog/philter-cli)

## Usage

Send the content of `input.txt` to Philter for processing. The filtered text will be written to standard out.

```
./philter-cli -h https://54.81.15.61:8080 -f input.txt
```

Send the content of `input.txt` to Philter for processing with explanation. The explanation containing the filtered text will be written to standard out as JSON.

```
./philter-cli -h https://54.81.15.61:8080 -f input.txt -e
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

This project is licensed under the Apache Software License, version 2.0.

Copyright 2020 Mountain Fog, Inc.
