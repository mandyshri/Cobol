       IDENTIFICATION DIVISION.
       PROGRAM-ID. DriverProg.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 UserNumber         PIC 99.
           01 PrnResult          PIC 9(6).
           01 Parameters.
             02 Number1         PIC 9(3).
             02 Number2         PIC 9(3).
             02 FirstString     PIC X(19) VALUE "First parameter  = ".
             02 SecondString    PIC X(19) VALUE "Second parameter = ".
             02 Result          PIC 9(6) COMP.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM CallMultiplyNums.
           PERFORM CallFickle
           PERFORM CallSteadfast
           PERFORM MakeFickleSteadfast.
           STOP RUN.

       CallMultiplyNums.
           DISPLAY "Input 2 numbers (3 digits each)  to be multiplied"
           DISPLAY "First number -  " WITH NO ADVANCING
           ACCEPT Number1
           DISPLAY "Second number - " WITH NO ADVANCING
           ACCEPT Number2.
           DISPLAY "The first string  is " FirstString.
           DISPLAY "The second string is " SecondString.
           DISPLAY ">>>>>>>>> Calling the sub-program now".
           CALL "MultiplyNums"
           USING BY CONTENT Number1, Number2, FirstString,
                 BY REFERENCE SecondString, Result.
           DISPLAY "Back in the main program now <<<<<<<<<<<".
           MOVE Result to PrnResult.
           DISPLAY Number1 " multiplied by " Number2 " is = " PrnResult.
           DISPLAY "The first string is  " FirstString.
           DISPLAY "The second string is " SecondString.

       CallFickle.
           DISPLAY SPACE
           DISPLAY "------------------- Calling Fickle ---------"
           MOVE 10 TO UserNumber
           CALL "Fickle" USING BY CONTENT UserNumber
           MOVE 10 TO UserNumber
           CALL "Fickle" USING BY CONTENT UserNumber
           MOVE 10 TO UserNumber
           CALL "Fickle" USING BY CONTENT UserNumber.

       CallSteadFast.
           DISPLAY SPACE
           DISPLAY "------------------- Calling Steadfast ---------"
           MOVE 10 TO UserNumber
           CALL "Steadfast" USING BY CONTENT UserNumber
           MOVE 10 TO UserNumber
           CALL "Steadfast" USING BY CONTENT UserNumber
           MOVE 10 TO UserNumber
           CALL "Steadfast" USING BY CONTENT UserNumber.

       MakeFickleSteadfast.
           DISPLAY SPACE
           DISPLAY "----- Making fickle act like Steadfast -------"
           CANCEL "Fickle"
           MOVE 10 TO UserNumber
           CALL "Fickle" USING BY CONTENT UserNumber

           CANCEL "Fickle"
           MOVE 10 TO UserNumber
           CALL "Fickle" USING BY CONTENT UserNumber

           CANCEL "Fickle"
           MOVE 10 TO UserNumber
           CALL "Fickle" USING BY CONTENT UserNumber.

       END PROGRAM DriverProg.
