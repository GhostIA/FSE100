brick.SetColorMode(2, 4);  % Set Color Sensor connected to Port 1 to Color Code Mode

color_rgb = brick.ColorRGB(2);  % Get Color on port 1.
touch = brick.TouchPressed(1);
%print color of object

fprintf("\tRed: %d\n", color_rgb(1));
%fprintf("\tGreen: %d\n", color_rgb(2));
%fprintf("\tBlue: %d\n", color_rgb(3));



if color_rgb(1) < 200
%pause(5)
    brick.StopMotor('AB')
end
if touch
    brick.StopMotor('AB')
    pause(0.1)
    brick.MoveMotor('A', -50)
    brick.MoveMotor('B', 50)
    pause(1.5)
    brick.StopMotor('AB')
end
