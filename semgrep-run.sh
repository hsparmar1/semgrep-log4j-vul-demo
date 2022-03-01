#!/bin/bash
echo "Running Log4j v2 Vulnerability Check..."
while getopts v: flag
do
    case "${flag}" in
        v) printEnv=${OPTARG};;
    esac
done

if [[ "$printEnv" == "verbose" ]];
then
	semgrep --verbose --config=/Users/Harjeet.S.Parmar/Development/semgrep/local-registry/java/log4j-vulnerability-check.yaml
else
	semgrep --config=/Users/Harjeet.S.Parmar/Development/semgrep/local-registry/java/log4j-vulnerability-check.yaml
fi
