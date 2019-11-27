global key;

while 1

    brick.MoveMotor('AB', 100)

    touch = brick.TouchPressed(1);

    brick.SetColorMode(2, 4);  

    

    color_rgb = brick.ColorRGB(2);  



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

    disp(color_rgb)

    if color_rgb(1) >= 95 && color_rgb(1) <= 105

        brick.MoveMotor('AB', 0)

        pause(2)

    end

    if color_rgb(3) >= 110 && color_rgb(3) <= 130

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

    if color_rgb(2) > color_rgb(3) && color_rgb(2) > color_rgb(1)
        brick.MoveMotor('AB', 0)

        brick.MoveMotor('C', 50)

        pause(3)

    end

end

