classdef createTest < tests.SpinWtest
    %CREATETEST Summary of this class goes here
    %   Detailed explanation goes here
    
    
    methods (Test)
        function standardCreate(testCase)
            s = spinw();
            testCase.assertClass(s,'spinw')
            s.validate;
        end
        
        
        function symbolicCreate(testCase)
            v = ver;
            if ~any(strcmp('Symbolic Math Toolbox', {v.Name}))
                return
            end
            s = spinw();
            s.symbolic = true;
            testCase.assertClass(s,'spinw')
            s.validate;
        end
    end
end

