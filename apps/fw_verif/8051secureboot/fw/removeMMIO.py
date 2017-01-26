# python scripts for commenting out MMIO function body in FW.

import os
import sys
import argparse

def getLineFromFile (inFile):
    res = []
    with open (inFile, 'r') as rFile:
        for line in rFile:
            try:
                line = line.strip ('\n')
                res.append (line)
            except:
                print 'File', inFile, ' has wrong format when stripping endline'
    return res

def removeMMIO(inFile, outFile, funcs):
    print inFile, outFile
    print funcs
    metMMIO = 0
    res = []
    with open (inFile, 'r') as rFile:
        for line in rFile:
            if metMMIO == 0:
                for fun in funcs:
                    sub = '(rule (let ((a!1 (and (' + fun + '@_1'
                    if sub in line:
                        metMMIO = 1
            elif metMMIO == 1:
                for fun in funcs:
                    sub = '(rule (=> (' + fun + '@.split'
                    if sub in line:
                        metMMIO = 0
            else:
                print 'unknown case'

            if metMMIO == 0:
                res.append (line)
            else:
                newLine = ';' + line
                res.append (newLine)

    print 'process complete'

    wFile = open (outFile, 'w')
    for line in res:
        wFile.write (line)

    return

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument ("input_file", type=str,
                         help="input smt file.")
    parser.add_argument ("output_file", type=str, 
                         help="output smt file.")
    parser.add_argument ("functions", type=str, nargs='+',
                         help="functions to be removed.")
    args = parser.parse_args()

    removeMMIO(args.input_file, args.output_file, args.functions)
