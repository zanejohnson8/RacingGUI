%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13200 Spring 2015
% Programmer(s) and Purdue Email Address(es):
% 1. Zane Johnson, john1464@purdue.edu
%
% Other Contributor(s) and Purdue Email Address(es):
% 1. Alex Stevens steve130@purdue.edu
%
% Section #: 046 Team #: 02
% Assignment: GUI GAMES Project
%
% Academic Integrity Statement:
% I/We have not used source code obtained from
% any other unauthorized source, either modified
% or unmodified. Neither have I/we provided access
% to my/our code to another. The project I/we am/are
% submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function varargout = RacingGameGUI_sec46_team2(varargin)
% RACINGGAMEGUI_SEC46_TEAM2 MATLAB code for RacingGameGUI_sec46_team2.fig
%      RACINGGAMEGUI_SEC46_TEAM2, by itself, creates a new RACINGGAMEGUI_SEC46_TEAM2 or raises the existing
%      singleton*.
%
%      H = RACINGGAMEGUI_SEC46_TEAM2 returns the handle to a new RACINGGAMEGUI_SEC46_TEAM2 or the handle to
%      the existing singleton*.
%
%      RACINGGAMEGUI_SEC46_TEAM2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RACINGGAMEGUI_SEC46_TEAM2.M with the given input arguments.
%
%      RACINGGAMEGUI_SEC46_TEAM2('Property','Value',...) creates a new RACINGGAMEGUI_SEC46_TEAM2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RacingGameGUI_sec46_team2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RacingGameGUI_sec46_team2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RacingGameGUI_sec46_team2

% Last Modified by GUIDE v2.5 19-Apr-2015 18:29:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RacingGameGUI_sec46_team2_OpeningFcn, ...
                   'gui_OutputFcn',  @RacingGameGUI_sec46_team2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before RacingGameGUI_sec46_team2 is made visible.
function RacingGameGUI_sec46_team2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RacingGameGUI_sec46_team2 (see VARARGIN)
% ---------------- Image of Road -----------------------------------------
% read image
handles.image_bg=imread('Background.png');
% show image
handles.im_bg = imshow(handles.image_bg, 'Parent', handles.rg_axes); % saving the image in the handles structure allow to modify its properties from any place
% get coordinates of image vertexes;
handles.Xlimits = get(handles.im_bg, 'Xdata');
handles.Ylimits = get(handles.im_bg, 'Ydata');
% calculate length of x and y sides of the image
handles.Xlength = handles.Xlimits(2) - handles.Xlimits(1);
handles.Ylength = handles.Ylimits(2) - handles.Ylimits(1);
% ---------------- Image of Car-----------------------------------
% read the second image
handles.image_car = imread('Car.PNG');
% show the second image on top of the other image
hold on
handles.im_car = imshow(handles.image_car,'Parent', handles.rg_axes);
% get default position of image
handles.carX = get(handles.im_car, 'Xdata');
handles.carY = get(handles.im_car, 'Ydata');
% make the image smaller
handles.carX(2) = 0.17*handles.carX(2);
handles.carY(2) = 0.17*handles.carY(2);
% change position of second image
set(handles.im_car, 'Xdata', handles.carX + 0.025*handles.Xlength) %uses image as a frame of reference. 
set(handles.im_car, 'Ydata', handles.carY + 0.48*handles.Ylength) 
hold off
% ---------------- Image of traffic-----------------------------------
% read the second image
handles.image_t1 = imread('traffic1.PNG');
% show the second image on top of the other image
hold on
handles.im_t1 = imshow(handles.image_t1,'Parent', handles.rg_axes);
% get default position of image
handles.t1X = get(handles.im_t1, 'Xdata');
handles.t1Y = get(handles.im_t1, 'Ydata');
% make the image smaller
handles.t1X(2) = 0.005*handles.t1X(2);
handles.t1Y(2) = 0.005*handles.t1Y(2);
%gets random number for random placement
x = randi([1, 4], 1);
handles.t1X = [550 665];
% change position of second image
if (x == 3)
    set(handles.im_t1, 'Xdata', handles.t1X); %uses image as a frame of reference. 
    set(handles.im_t1, 'Ydata', [223.2800  261.2100]); %set random y position for lane 3
elseif (x == 4) 
    set(handles.im_t1, 'Xdata', handles.t1X);  %uses image as a frame of reference. 
    set(handles.im_t1, 'Ydata', [284.2800  322.2100]);  %set random y position for lane 4
elseif (x == 1) 
    set(handles.im_t1, 'Xdata', handles.t1X); %0.025*handles.Xlength --> uses image as a frame of reference. 
    set(handles.im_t1, 'Ydata', [101.2800  139.2100]);  %set random y position for lane 1
elseif (x == 2) 
    set(handles.im_t1, 'Xdata', handles.t1X); %uses image as a frame of reference. 
    set(handles.im_t1, 'Ydata', [162.2800  200.2100]);  %set random y position for lane 2
end
hold off
% ---------------- Image of traffic-----------------------------------
% read the second image
handles.image_t2 = imread('Traffic.PNG');
% show the second image on top of the other image
hold on
handles.im_t2 = imshow(handles.image_t2,'Parent', handles.rg_axes);
% get default position of image
handles.t2X = get(handles.im_t2, 'Xdata');
handles.t2Y = get(handles.im_t2, 'Ydata');
% make the image smaller
handles.t2X(2) = 0.15*handles.t2X(2);
handles.t2Y(2) = 0.15*handles.t2Y(2);
%gets random number for random placement
y = randi([1, 4], 1);
handles.t2X =  [750 865]; 
% change position of second image
if (y == 3)
    set(handles.im_t2, 'Xdata', handles.t2X); %uses image as a frame of reference. 
    set(handles.im_t2, 'Ydata', [223.2800  261.2100]);  %set random y position for lane 3
elseif (y == 4) 
    set(handles.im_t2, 'Xdata', handles.t2X); %uses image as a frame of reference. 
    set(handles.im_t2, 'Ydata', [284.2800  322.2100]);  %set random y position for lane 4
elseif (y == 1) 
    set(handles.im_t2, 'Xdata', handles.t2X); %uses image as a frame of reference. 
    set(handles.im_t2, 'Ydata', [101.2800  139.2100]);  %set random y position for lane 1
elseif (y == 2) 
    set(handles.im_t2, 'Xdata', handles.t2X); %uses image as a frame of reference. 
    set(handles.im_t2, 'Ydata', [162.2800  200.2100]);  %set random y position for lane 2
end
hold off
% ---------------- Image of traffic-----------------------------------
% read the second image
handles.image_t3 = imread('traffic1.PNG');
% show the second image on top of the other image
hold on
handles.im_t3 = imshow(handles.image_t3,'Parent', handles.rg_axes);
% get default position of image
handles.t3X = get(handles.im_t3, 'Xdata');
handles.t3Y = get(handles.im_t3, 'Ydata');
% make the image smaller
handles.t3X(2) = .015 * handles.t3X(2);
handles.t3Y(2) = .015 * handles.t3Y(2);
%gets random number for random placement
z = randi([1, 4], 1);
handles.t3x = [925 1040];
% change position of second image dependant on random number generated
if (z == 3)
    set(handles.im_t3, 'Xdata', handles.t3x); %uses image as a frame of reference. 
    set(handles.im_t3, 'Ydata', [223.2800  261.2100]); %set random y position for lane 3
elseif (z == 4) 
    set(handles.im_t3, 'Xdata', handles.t3x); %uses image as a frame of reference.   
    set(handles.im_t3, 'Ydata', [284.2800  322.2100]); %set random y position for lane 4
elseif (z == 1) 
    set(handles.im_t3, 'Xdata', handles.t3x); %uses image as a frame of reference. 
    set(handles.im_t3, 'Ydata', [101.2800  139.2100]);  %set random y position for lane 1
elseif (z == 2) 
    set(handles.im_t3, 'Xdata', handles.t3x); %uses image as a frame of reference. 
    set(handles.im_t3, 'Ydata', [162.2800  200.2100]);  %set random y position for lane 2
end
hold off
% ---------------- Image of traffic-----------------------------------
% read the second image
handles.image_t4 = imread('Traffic.PNG');
% show the second image on top of the other image
hold on
handles.im_t4 = imshow(handles.image_t4,'Parent', handles.rg_axes);
% get default position of image
handles.t4X = get(handles.im_t4, 'Xdata');
handles.t4Y = get(handles.im_t4, 'Ydata');
% make the image smaller
handles.t4X(2) = .005 * handles.t4X(2);
handles.t4Y(2) = .005 * handles.t4Y(2);
%gets random number for random placement
z = randi([1, 4], 1);
handles.t4x = [1075 1140];
% change position of second image dependant on random number generated
if (z == 3)
    set(handles.im_t4, 'Xdata', handles.t4x); %uses image as a frame of reference. 
    set(handles.im_t4, 'Ydata', [223.2800  261.2100]);
elseif (z == 4) 
    set(handles.im_t4, 'Xdata', handles.t4x); %uses image as a frame of reference. 
    set(handles.im_t4, 'Ydata', [284.2800  322.2100]);
elseif (z == 1) 
    set(handles.im_t4, 'Xdata', handles.t4x); %uses image as a frame of reference. 
    set(handles.im_t4, 'Ydata', [101.2800  139.2100]);
elseif (z == 2) 
    set(handles.im_t4, 'Xdata', handles.t4x); %uses image as a frame of reference. 
    set(handles.im_t4, 'Ydata', [162.2800  200.2100]);
end
hold off

set(handles.time_st,'Visible','off'); %sets the timer to not be visible
set(handles.go_st,'Visible','off'); %sets the go text to not be visible
set(handles.crash_st,'Visible','off'); %sets the crash text to not be visible
set(handles.text10,'Visible','off'); %sets the crash text to not be visible
set(handles.j_st,'Visible','off'); %sets the crash text to not be visible
set(handles.text11,'Visible','off'); %sets the crash text to not be visible
% Choose default command line output for RacingGameGUI_sec46_team2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RacingGameGUI_sec46_team2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);




% --- Outputs from this function are returned to the command line.
function varargout = RacingGameGUI_sec46_team2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start_pb.
function start_pb_Callback(hObject, eventdata, handles)
% hObject    handle to start_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
WhereNextGUI_sec46_team02  %opens the where next GUI
close(RacingGameGUI_sec46_team2)  %closes the racing GUI

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global help;
help = 1;  %sets global help variable equal to 1, so that the instructions don't exit the game
HelpGUI_sec46_team02;  %%runs the help GUI


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

% save the key pressed by the user
pressedkey = eventdata.Key; 
% get current x position of cars and sets the changing variable equal to
% the original position
xcurrent = get(handles.im_car, 'Xdata');
ycurrent = get(handles.im_car, 'Ydata');
xt1 = get(handles.im_t1, 'Xdata');
x1new = xt1(1);
xt2 = get(handles.im_t2, 'Xdata');
x2new = xt2(1);
xt3 = get(handles.im_t3, 'Xdata');
x3new = xt3(1);
xt4 = get(handles.im_t4, 'Xdata');
x4new = xt4(1);
    % selection structure for moving the car
    switch pressedkey
        case 'space' %starts the countdown
            %timer 
             set(handles.space_st,'Visible','off'); %sets the space message to not be visible
             set(handles.time_st,'Visible','on'); %sets the timer to be visible
             n = 3; %sets the beggining countdown to 3
             k = 0; %sets the mile counter to zero
             while(n > 0) %while the countdown is bigger than zero
                set(handles.time_st, 'String', n); %set the time text to equal n
                pause(1); %pause a second
                n = n - 1; %subtract one from n
             end
             set(handles.time_st,'Visible','off'); %sets the timer to not be visible
             set(handles.go_st,'Visible','on'); %sets the go text be visible
             pause(1); %pause for a second
             set(handles.go_st,'Visible','off'); %sets the go text to not be visible
             iter = 20; %sets the iteration variable to 1
             %variable to reset x value for traffic cars
             reset = 690;
             reset2 = 690;
             reset3 = 690;
             reset4 = 690;
            while 1 % continue repeat the code until 'if' condition is met and the code hits the return
                % move traffic toward the main car
                deltaX = iter; % the higher the faster the traffic will move and longer the code runs
                % update x position of each car
                speedConstraint = 10 + (iter / 2.2);
                x1new = x1new - deltaX;
                x2new = x2new - deltaX;
                x3new = x3new - deltaX;
                x4new = x4new - deltaX;
                xT1 = [x1new, x1new + 115, x1new + 115];
                xT2 = [x2new, x2new + 115, x2new + 115];
                xT3 = [x3new, x3new + 115, x3new + 115];
                xT4 = [x4new, x4new + 115, x4new + 115];
                set(handles.im_t1, 'Xdata', xT1)
                set(handles.im_t2, 'Xdata', xT2)
                set(handles.im_t3, 'Xdata', xT3)
                set(handles.im_t4, 'Xdata', xT4)
                xt1 = get(handles.im_t1, 'Xdata'); %gets traffic's x data every time
                yt1 = get(handles.im_t1, 'Ydata'); %gets traffic's y data every time
                xt2 = get(handles.im_t2, 'Xdata'); %gets traffic's x data every time
                yt2 = get(handles.im_t2, 'Ydata'); %gets traffic's y data every time
                xt3 = get(handles.im_t3, 'Xdata'); %gets traffic's x data every time
                yt3 = get(handles.im_t3, 'Ydata'); %gets traffic's y data every time
                xt4 = get(handles.im_t4, 'Xdata'); %gets traffic's x data every time
                yt4 = get(handles.im_t4, 'Ydata'); %gets traffic's y data every time
                %count number of miles traveled
                k = k + .1;
                set(handles.text6, 'String', 'Miles traveled:');
                set(handles.mile_st, 'String', k);
                set(handles.text7, 'String', 'mi');
                pause(0.15) % this allows to show the movement of the traffic
                ycurrent = get(handles.im_car, 'Ydata'); %gets cars data each iteration
                if xt1(1) <= (xcurrent(2) + speedConstraint) && xt1(2) >= (xcurrent(1) + 15)    % If it is within the x range of the car
                    if (yt1(1) >= ycurrent(1)) && (yt1(2) <= ycurrent(2)) %if it is within the y range of the car
                        set(handles.crash_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text10,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'String', k); %sets the crash text to not be number of miles
                        set(handles.text11,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text6, 'String', 'You   traveled'); %adds text to the static text box
                        set(handles.mile_st, 'String', k);  %displays the miles traveled
                        set(handles.text7, 'String', 'mi.'); %displays text to the third static text box
                        set(handles.im_t1, 'Xdata', [handles.t1X]);  %sets the car back to original position
                        set(handles.im_t2, 'Xdata', [handles.t2X]);  %sets the car back to original position
                        set(handles.im_t3, 'Xdata', [handles.t3x]);  %sets the car back to original position
                        set(handles.im_t4, 'Xdata', [handles.t4x]);  %sets the car back to original position
                        % ---------------- Image of fire -----------------------------------------
                        % read image
                        handles.image_fire=imread('fire.png'); 
                        hold on
                        % show image
                        handles.im_fire = imshow(handles.image_fire, 'Parent', handles.rg_axes); % saving the image in the handles structure allow to modify its properties from any place
                        set(handles.im_fire, 'Xdata', [xcurrent(1) + 15 (xcurrent(2) - 15)])
                        set(handles.im_fire, 'Ydata', yt1)
                        hold off
                        set(handles.im_car, 'Xdata', [-1000 -1115]);
                        pause(3);  %pause 3 seconds
                        set(handles.im_car, 'Xdata', xcurrent);
                        set(handles.im_car, 'Ydata', ycurrent);
                        set(handles.space_st,'Visible','on'); %sets the space bar to not be visual
                        set(handles.crash_st,'Visible','off'); %sets the crash text to not be visual
                        set(handles.text10,'Visible','off'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','off'); %sets the crash text to not be visible
                        set(handles.text11,'Visible','off'); %sets the crash text to not be visible                        
                        set(handles.im_fire, 'Xdata', [-1000 -1100]) %put fire picture off screen
                        set(handles.im_fire, 'Ydata', yt1 - 1000) %put fire picture off screen
                        set(handles.text6, 'String', '');  %reset text boxes
                        set(handles.mile_st, 'String', '');
                        set(handles.text7, 'String', '');
                        return
                    end
                   
                elseif (xt1(1) <= (xcurrent(1) - 100))
                        x = randi([1 4], 1); % generate new random y position
                        % change position of second image 
                        if (x == 3) 
                            set(handles.im_t1, 'Ydata', [223.2800  261.2100]);
                        elseif (x == 4)
                            set(handles.im_t1, 'Ydata', [284.2800  322.2100]);
                        elseif (x == 1)
                            set(handles.im_t1, 'Ydata', [101.2800  139.2100]);
                        elseif (x == 2) 
                            set(handles.im_t1, 'Ydata', [162.2800  200.2100]);
                        end
                        x1new = xt1(1) + reset;
                    
                end
                if xt2(1) <= (xcurrent(2) + speedConstraint) && xt2(2) >= (xcurrent(1) + 15)    % If it is within the x range of the car
                    if (yt2(1) >= ycurrent(1)) && (yt2(2) <= ycurrent(2)) %if it is within the y range of the car
                        set(handles.crash_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text10,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'String', k); %sets the crash text to not be number of miles
                        set(handles.text11,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text6, 'String', 'You   traveled'); %adds text to the static text box
                        set(handles.mile_st, 'String', k);  %displays the miles traveled
                        set(handles.text7, 'String', 'mi.'); %displays text to the third static text box
                        set(handles.im_t1, 'Xdata', [handles.t1X]);  %sets the car back to original position
                        set(handles.im_t2, 'Xdata', [handles.t2X]);  %sets the car back to original position
                        set(handles.im_t3, 'Xdata', [handles.t3x]);  %sets the car back to original position
                        set(handles.im_t4, 'Xdata', [handles.t4x]);  %sets the car back to original position
                        % ---------------- Image of fire -----------------------------------------
                        % read image
                        handles.image_fire=imread('fire.png'); 
                        hold on
                        % show image
                        handles.im_fire = imshow(handles.image_fire, 'Parent', handles.rg_axes); % saving the image in the handles structure allow to modify its properties from any place
                        set(handles.im_fire, 'Xdata', [xcurrent(1) + 15 (xcurrent(2) - 15)])
                        set(handles.im_fire, 'Ydata', yt2)
                        hold off
                        set(handles.im_car, 'Xdata', [-1000 -1115]);
                        pause(2);  %pause two second
                        set(handles.im_car, 'Xdata', xcurrent);
                        set(handles.im_car, 'Ydata', ycurrent);
                        set(handles.space_st,'Visible','on'); %sets the space bar to not be visual
                        set(handles.crash_st,'Visible','off'); %sets the space bar to not be visual
                        set(handles.text10,'Visible','off'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','off'); %sets the crash text to not be visible
                        set(handles.text11,'Visible','off'); %sets the crash text to not be visible                        
                        set(handles.im_fire, 'Xdata', [-1000 -1100]) %put fire picture off screen
                        set(handles.im_fire, 'Ydata', yt2 - 1000) %put fire picture off screen
                        set(handles.text6, 'String', '');  %reset text boxes
                        set(handles.mile_st, 'String', '');
                        set(handles.text7, 'String', '');
                        return
                    end
                   
                elseif (xt2(1) <= (xcurrent(1) - 115))
                        x = randi([1 4], 1); % generate new random y position
                        % change position of second image
                        if (x == 3) 
                            set(handles.im_t2, 'Ydata', [223.2800  261.2100]);
                        elseif (x == 4)
                            set(handles.im_t2, 'Ydata', [284.2800  322.2100]);
                        elseif (x == 1)
                            set(handles.im_t2, 'Ydata', [101.2800  139.2100]);
                        elseif (x == 2) 
                            set(handles.im_t2, 'Ydata', [162.2800  200.2100]);
                        end
                        x2new = xt2(1) + reset2;
                end
                if xt3(1) <= (xcurrent(2) + speedConstraint) && xt3(2) >= (xcurrent(1) + 15)    % If it is within the x range of the car
                    if (yt3(1) >= ycurrent(1)) && (yt3(2) <= ycurrent(2)) %if it is within the y range of the car
                        set(handles.crash_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text10,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'String', k); %sets the crash text to not be number of miles
                        set(handles.text11,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text6, 'String', 'You   traveled'); %adds text to the static text box
                        set(handles.mile_st, 'String', k);  %displays the miles traveled
                        set(handles.text7, 'String', 'mi.'); %displays text to the third static text box
                        set(handles.im_t1, 'Xdata', [handles.t1X]);  %sets the car back to original position
                        set(handles.im_t2, 'Xdata', [handles.t2X]);  %sets the car back to original position
                        set(handles.im_t3, 'Xdata', [handles.t3x]);  %sets the car back to original position
                        set(handles.im_t4, 'Xdata', [handles.t4x]);  %sets the car back to original position
                        % ---------------- Image of fire -----------------------------------------
                        % read image
                        handles.image_fire=imread('fire.png'); 
                        hold on
                        % show image
                        handles.im_fire = imshow(handles.image_fire, 'Parent', handles.rg_axes); % saving the image in the handles structure allow to modify its properties from any place
                        set(handles.im_fire, 'Xdata', [xcurrent(1) + 15 (xcurrent(2) - 15)])  %set the fire to the x value of the car
                        set(handles.im_fire, 'Ydata', yt3)  %set the fire to the y value of the car
                        hold off
                        set(handles.im_car, 'Xdata', [-1000 -1115]);  %set the cars position off of the screen
                        pause(2);  %pause for two seconds
                        set(handles.im_car, 'Xdata', xcurrent);
                        set(handles.im_car, 'Ydata', ycurrent);
                        set(handles.space_st,'Visible','on'); %sets the space bar to not be visual
                        set(handles.crash_st,'Visible','off'); %sets the space bar to not be visual
                        set(handles.text10,'Visible','off'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','off'); %sets the crash text to not be visible
                        set(handles.text11,'Visible','off'); %sets the crash text to not be visible                        
                        set(handles.im_fire, 'Xdata', [-1000 -1100]) %put fire picture off screen
                        set(handles.im_fire, 'Ydata', yt3 - 1000) %put fire picture off screen
                        %reset text boxes
                        set(handles.text6, 'String', '');
                        set(handles.mile_st, 'String', '');
                        set(handles.text7, 'String', '');
                        return
                    end
                   
                elseif (xt3(1) <= (xcurrent(1) - 115))
                        x = randi([1 4], 1); % generate new random y position
                        % change position of second image 
                        if (x == 3) 
                            set(handles.im_t3, 'Ydata', [223.2800  261.2100]);
                        elseif (x == 4)
                            set(handles.im_t3, 'Ydata', [284.2800  322.2100]);
                        elseif (x == 1)
                            set(handles.im_t3, 'Ydata', [101.2800  139.2100]);
                        elseif (x == 2) 
                            set(handles.im_t3, 'Ydata', [162.2800  200.2100]);
                        end
                        x3new = xt3(1) + reset3;
                end
                if xt4(1) <= (xcurrent(2) + speedConstraint) && xt4(2) >= (xcurrent(1) + 15)    % If it is within the x range of the car
                    if (yt4(1) >= ycurrent(1)) && (yt4(2) <= ycurrent(2)) %if it is within the y range of the car
                        set(handles.crash_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text10,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','on'); %sets the crash text to not be visible
                        set(handles.j_st,'String', k); %sets the crash text to not be number of miles
                        set(handles.text11,'Visible','on'); %sets the crash text to not be visible
                        set(handles.text6, 'String', 'You   traveled'); %adds text to the static text box
                        set(handles.mile_st, 'String', k);  %displays the miles traveled
                        set(handles.text7, 'String', 'mi.'); %displays text to the third static text box
                        set(handles.im_t1, 'Xdata', [handles.t1X]);  %sets the car back to original position
                        set(handles.im_t2, 'Xdata', [handles.t2X]);  %sets the car back to original position
                        set(handles.im_t3, 'Xdata', [handles.t3x]);  %sets the car back to original position
                        set(handles.im_t4, 'Xdata', [handles.t4x]);  %sets the car back to original position
                        % ---------------- Image of fire -----------------------------------------
                        % read image
                        handles.image_fire=imread('fire.png'); 
                        hold on
                        % show image
                        handles.im_fire = imshow(handles.image_fire, 'Parent', handles.rg_axes); % saving the image in the handles structure allow to modify its properties from any place
                        set(handles.im_fire, 'Xdata', [xcurrent(1) + 15 (xcurrent(2) - 15)]);
                        set(handles.im_fire, 'Ydata', yt4)
                        hold off
                        set(handles.im_car, 'Xdata', [-1000 -1115]);
                        pause(2);  %pause two second
                        set(handles.im_car, 'Xdata', xcurrent);
                        set(handles.im_car, 'Ydata', ycurrent);
                        set(handles.space_st,'Visible','on'); %sets the space bar to not be visual
                        set(handles.crash_st,'Visible','off'); %sets the space bar to not be visual
                        set(handles.text10,'Visible','off'); %sets the crash text to not be visible
                        set(handles.j_st,'Visible','off'); %sets the crash text to not be visible
                        set(handles.text11,'Visible','off'); %sets the crash text to not be visible                        
                        set(handles.im_fire, 'Xdata', [-1000 -1100]) %put fire picture off screen
                        set(handles.im_fire, 'Ydata', yt4 - 1000) %put fire picture off screen
                        set(handles.text6, 'String', '');  %reset text boxes
                        set(handles.mile_st, 'String', '');
                        set(handles.text7, 'String', '');
                        return
                    end
                   
                elseif (xt4(1) <= (xcurrent(1) - 115))
                        x = randi([1 4], 1); % generate new random y position
                        % change position of second image
                       
                        if (x == 3) 
                            set(handles.im_t4, 'Ydata', [223.2800  261.2100]);
                        elseif (x == 4)
                            set(handles.im_t4, 'Ydata', [284.2800  322.2100]);
                        elseif (x == 1)
                            set(handles.im_t4, 'Ydata', [101.2800  139.2100]);
                        elseif (x == 2) 
                            set(handles.im_t4, 'Ydata', [162.2800  200.2100]);
                        end
                        x4new = xt4(1) + reset4;
                    
                end
                if (iter <= 90)
                   iter = iter + .45;
                end
            end
        case 'uparrow' %move car up
            if (ycurrent(2) >= 180.21)
                ycurrent = ycurrent - 61; 
                set(handles.im_car, 'Ydata', ycurrent) % set new y position
            end
        case 'downarrow' %move car down
            if (ycurrent(1) <= 223.28)
                ycurrent = ycurrent + 61; 
                set(handles.im_car, 'Ydata', ycurrent) % set new y position
            end
    end


% --- Executes on button press in retry_pb.
function retry_pb_Callback(hObject, eventdata, handles)
% hObject    handle to retry_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, before creating properties.
function rg_axes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rg_axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
