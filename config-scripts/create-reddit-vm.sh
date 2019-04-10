#!/bin/bash

gcloud compute instances create reddit-app --image-family reddit-base --machine-type=g1-small --tags puma-server
