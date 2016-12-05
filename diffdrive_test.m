   function dzdt=diffdrive_test(t,z, target, ic)
    % This defines the right hand side of the differential equation model for
    % the simple car with two wheels. UR,rt is the control for the right wheel
    % and UL,lt is the control for the left wheel
    r=0.1; % Radius of wheel
    L=0.5; % Distance between wheels
    [UR, UL] = determine_control_pure_pursuit(t, z, target, L, ic);
    
    dzdt = [
    (r*(UR+UL)/2)*cos(z(3));
    (r*(UR+UL)/2)*sin(z(3));
    (r*(UR-UL)/L)
    ];
    end