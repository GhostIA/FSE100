global key;







while 1

    brick.MoveMotor('AB', 75)

    touch = brick.TouchPressed(1);

    brick.SetColorMode(3, 2);  
    color = brick.ColorCode(3);  

    if touch

        disp("touch")

        brick.MoveMotor('AB', -50)


        pause(0.3)

        brick.MoveMotor('A', -50)

        brick.MoveMotor('B', 50)


        pause(0.98)

    else

        brick.MoveMotor('AB', 100)
    end

    if color == 5
        disp("red")
        brick.MoveMotor('AB', 0)

        pause(2)

    end

    if color == 2 

        InitKeyboard();

        while 1

            pause(0.1);

            
            switch key

                case 'w'
                   
                    brick.MoveMotor('AB', 50);

                case 's'

                    brick.MoveMotor('AB', -50);

                    
                case 'a'

                    
                    brick.MoveMotor('A', -50);

                    brick.MoveMotor('B', 50);
                case 'd'
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', -50);
                case 'e'
                    brick.MoveMotor('C', -50)
                case 'r'
                    brick.MoveMotor('C', 50)
                case 0

                    brick.MoveMotor('ABC', 0);
                case 'q'

                    break;
            end
        end

        CloseKeyboard();

    end

    if color == 3
        brick.MoveMotor('AB', 50)
        pause(2)
        brick.MoveMotor('AB', 0)
        pause(3)
        brick.MoveMotor('C', 50)

        pause(3)

        brick.MoveMotor('C', 0) 

    end

    
end
