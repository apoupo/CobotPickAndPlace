function [x,y,z,fileName] = alphabetTraj(alphabet)
switch alphabet
    case 'A'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[-1 -1 1 1 1 -1];
        z = 0.1*[-1 1 1 -1 0 0] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
   case 'B'
        x = 0.5*zeros(1,7) + 0.1;
        y = 0.1*[-1 -1 1 1 -1 -1 1];
        z = 0.1*[-1 1 1 -1 -1 0 0] + 0.3;
        points = 7;
        fileName = 'End_eff_test_7.slx';
    case 'C'
        x = 0.5*zeros(1,4) + 0.1;
        y = 0.1*[1 -1 -1 1];
        z = 0.1*[1 1 -1 -1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
    case 'D'
        x = 0.5*zeros(1,5) + 0.1;
        y = 0.1*[-1 -1 1 1 -1];
        z = 0.1*[-1 1 0.25 -0.25 -1] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
   case 'E'
        x = 0.5*zeros(1,7) + 0.1;
        y = 0.1*[1 -1 -1 1 -1 -1 1];
        z = 0.1*[1 1 -1 -1 -1 0 0] + 0.3;
        points = 7;
        fileName = 'End_eff_test_7.slx';
   case 'F'
        x = 0.5*zeros(1,5) + 0.1;
        y = 0.1*[0 -1 -1 -1 0];
        z = 0.1*[1 1 -1 0 0] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
  case 'G'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[1 -1 -1 1 1 0];
        z = 0.1*[1 1 -1 -1 0 0] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
 case 'H'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[-1 -1 -1 1 1 1];
        z = 0.1*[1 -1 0 0 1 -1] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
  case 'I'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[-1 1 0 0 -1 1];
        z = 0.1*[1 1 1 -1 -1 -1] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
 case 'J'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[-1 1 0 0 -1 -1];
        z = 0.1*[1 1 1 -1 -1 0] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
  case 'K'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[1 -1 1 -1 -1 -1];
        z = 0.1*[1 0 -1 0 1 -1] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
   case 'L'
        x = 0.5*zeros(1,4) + 0.1;
        y = 0.1*[-1 -1 0.75 1];
        z = 0.1*[1 -1 -1 -1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
   case 'M'
        x = 0.5*zeros(1,5) + 0.1;
        y = 0.1*[-1 -1 0 1 1];
        z = 0.1*[-1 1 0 1 -1] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
   case 'N'
        x = 0.5*zeros(1,4) + 0.1;
        y = 0.1*[-1 -1 1 1];
        z = 0.1*[-1 1 -1 1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
   case 'O'
        x = 0.5*zeros(1,5) + 0.1;
        y = 0.1*[-1 -1 1 1 -1];
        z = 0.1*[-1 1 1 -1 -1] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
   case 'P'
        x = 0.5*zeros(1,5) + 0.1;
        y = 0.1*[-1 -1 1 1 0];
        z = 0.1*[-1 1 1 0 0] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
   case 'Q'
        x = 0.5*zeros(1,7) + 0.1;
        y = 0.1*[1 -1 -1 1 1 0 1.5];
        z = 0.1*[-1 -1 1 1 -1 0 -1.5] + 0.3;
        points = 7;
        fileName = 'End_eff_test_7.slx';
   case 'R'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[-1 -1 1 1 -1 1];
        z = 0.1*[-1 1 1 0 0 -1] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
   case 'S'
        x = 0.5*zeros(1,6) + 0.1;
        y = 0.1*[1 -1 -1 1 1 -1];
        z = 0.1*[1 1 0 0 -1 -1] + 0.3;
        points = 6;
        fileName = 'End_eff_test_6.slx';
   case 'T'
        x = 0.5*zeros(1,4) + 0.1;
        y = 0.1*[0 0 -1 1];
        z = 0.1*[-1 1 1 1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
   case 'U'
        x = 0.5*zeros(1,4) + 0.1;
        y = 0.1*[-1 -1 1 1];
        z = 0.1*[1 -1 -1 1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
   case 'V'
        x = 0.5*zeros(1,4) + 0.1;
        y = 0.1*[-1 0 0.5 1];
        z = 0.1*[1 -1 0 1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
   case 'W'
        x = 0.5*zeros(1,5) + 0.1;
        y = 0.1*[-1 -1 0 1 1];
        z = 0.1*[1 -1 0 -1 1] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
   case 'X'
        x = 0.5*zeros(1,5)+0.1;
        y = 0.1*[-1 1 0 -1 1];
        z = 0.1*[1 -1 0 -1 1] + 0.3;
        points = 5;
        fileName = 'End_eff_test_5.slx';
   case 'Y'
        x = 0.5*zeros(1,4)+0.1;
        y = 0.1*[-1 0 -1 1];
        z = 0.1*[1 0 -1 1] + 0.3;
        points = 4;
        fileName = 'End_eff_test_4.slx';
   case 'Z'
        x = 0.2*zeros(1,4)+0.1;
        y = 0.1*[-1 1 -1 1];
        z = 0.1*[1 1 -1 -1] + 0.3; 
        points = 4;
        fileName = 'End_eff_test_4.slx';
    case 'line'
        x = 0.2*zeros(1,4) + 0.1;
        y = 0.2*[-1 -0.5 0 0.5];
        z = 0.3*[1 1 1 1];
        points = 4;
        fileName = 'End_eff_test_4.slx';
end