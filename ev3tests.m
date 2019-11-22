global key;
while 1
    brick.MoveMotor('AB', 100)
    touch = brick.TouchPressed(1);
    brick.SetColorMode(2, 4);  
    
    color_rgb = brick.ColorRGB(2);  

    if touch
        %disp("touch")
        brick.MoveMotor('AB', -50)
        pause(0.3)
        brick.MoveMotor('A', -50)
        brick.MoveMotor('B', 50)
        pause(0.97)
        
    else
        brick.MoveMotor('AB', 50)
    end
    disp(color_rgb)
    if color_rgb(1) >= 60
        brick.StopMotor('AB')
        pause(2)
    end
    if color_rgb(3) >= 50
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
    if color_rgb(2) >= 30
        brick.StopMotor()
        brick.MoveMotor('C', 50)
        pause(3)
    end
end


