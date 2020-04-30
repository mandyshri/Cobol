       IDENTIFICATION DIVISION.
       PROGRAM-ID. MultiplyNums.
       DATA DIVISION.
       LINKAGE SECTION.
           01 Param1           PIC 9(3).
           01 Param2           PIC 9(3).
           01 Answer           PIC 9(6) COMP.
           01 StrA             PIC X(20).
           01 StrB             PIC X(20).
       PROCEDURE DIVISION USING Param1, Param2, StrA, StrB, Answer.
       MAIN-PROCEDURE.
           DISPLAY ">>>>>>>>>>>>>>>>> In the sub-program".
           DISPLAY StrA Param1.
            DISPLAY StrB Param2.
           MULTIPLY Param1 BY Param2 GIVING Answer.
           MOVE "VALUE OVERWRITTEN" TO StrA.
           MOVE "VALUE OVERWRITTEN" TO StrB.
           DISPLAY "<<<<<<<<<<<<<< Leaving sub-program now".
           STOP RUN.
       END PROGRAM MultiplyNums.
