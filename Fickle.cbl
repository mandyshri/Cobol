
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Fickle.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 RunningTotal     PIC 9(4) VALUE 150.
       LINKAGE SECTION.
           01 Param1           PIC 99.
       PROCEDURE DIVISION USING Param1.
       MAIN-PROCEDURE.
           ADD Param1 TO RunningTotal.
           DISPLAY "The total so far is " RunningTotal.
            STOP RUN.
       END PROGRAM Fickle.
