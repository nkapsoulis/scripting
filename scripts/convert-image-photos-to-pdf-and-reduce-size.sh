#!/bin/bash

convert 1.jpg 2.jpg 'myDocument.pdf' 
pdf2ps 'myDocument.pdf' myPSDocument.ps
ps2pdf myPSDocument.ps 'myDocument.pdf' 
du -sh 'myDocument.pdf' 
evince 'myDocument.pdf' 
