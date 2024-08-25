#!/bin/bash

location=$(locate $1|head -n 1)
head -4 "$location"
