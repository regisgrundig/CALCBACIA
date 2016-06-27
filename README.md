# CALBACIA

THE PURPOSE OF THE SCRIPT CALCBACIA IS A SCRIPT THAT CALCULATE, THE "GRADS" AMOUNT WITHIN ONE OF A BASIN CONTOUR OR ANYONE TERRITORY CONTOUR. THE AMOUNT MAY BE EITHER THAT THE CTL FILE.

INPUTS: any data file grads or netcdf
                       contours BLN format (Golden Software Surfer)

Outputs: The default output file are texts with the amounts per time.
               Each contour creates a different text file.


## PREPARING FILES PROFILES

In ADDBACIA / BLN directory put the files with BLN extension and run in the script directory MATLAB MATLAB:

 cria_arquivos_bacias.m

After the directory ADDBACIA run the script in bash shell script

addbacia.sh

The contours are ready for use in the script calcbacia.gs

## USING THE SCRIPT CALCBACIA.GS

Grads be a file that has the variable precipitation (rain) called teste.ctl and also has 365 daily records.

open teste.ctl
calcbacia (rain, 365, raintot)

where:


rain -> variable name you want to calculate
365 -> number of times to process
raintot -> prefix for output files

  PREFIXO_CONTORNO.prn
