classdef Controller < handle & matlab.mixin.Copyable
    
    properties
        controllerType = 'nn' % nn or cpg
        % change nEvents and Order if a derivatives function is needed
        % more info can be found in the documentation
        nEvents         = 1; 
        Order           = 1; 
        % hiddenSizes accepts a vector that hold the number of neurons
        % in every layer. transfer Fcn accepts a cell array of activation 
        % function for every layer (including output)
        hiddenSizes     = 0;
        transferFcn     = {'purelin'};
    end
    
    methods
        % %%%%%% % Class constructor % %%%%%% %
        function C = Controller(varargin)
        if nargin ~= 4
            error('controller accepts 3 arguments in');
        end
        switch varargin{1}
            case 'nn'
                n = feedforwardnet(varargin{2});
                for ii = 1:length(C.hiddenSizes)
                    n.layers{ii}.transferFcn = C.transferFcn{ii};
                end
            case 'cpg'
                % do stuff
        end
        end  
        
        function Torques = Output(C, t, X) %#ok
            Torques = n.sim(
        end
    end
end