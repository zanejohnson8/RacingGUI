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
function varargout = WelcomeGUI_sec046_team02(varargin)
% WELCOMEGUI_SEC046_TEAM02 MATLAB code for WelcomeGUI_sec046_team02.fig
%      WELCOMEGUI_SEC046_TEAM02, by itself, creates a new WELCOMEGUI_SEC046_TEAM02 or raises the existing
%      singleton*.
%
%      H = WELCOMEGUI_SEC046_TEAM02 returns the handle to a new WELCOMEGUI_SEC046_TEAM02 or the handle to
%      the existing singleton*.
%
%      WELCOMEGUI_SEC046_TEAM02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WELCOMEGUI_SEC046_TEAM02.M with the given input arguments.
%
%      WELCOMEGUI_SEC046_TEAM02('Property','Value',...) creates a new WELCOMEGUI_SEC046_TEAM02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WelcomeGUI_sec046_team02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WelcomeGUI_sec046_team02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WelcomeGUI_sec046_team02

% Last Modified by GUIDE v2.5 08-Apr-2015 07:42:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WelcomeGUI_sec046_team02_OpeningFcn, ...
                   'gui_OutputFcn',  @WelcomeGUI_sec046_team02_OutputFcn, ...
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


% --- Executes just before WelcomeGUI_sec046_team02 is made visible.
function WelcomeGUI_sec046_team02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WelcomeGUI_sec046_team02 (see VARARGIN)
% show screenshots
trivia = imread('triviagame.PNG');
imshow(trivia,'Parent', handles.triviagame_axes);
racing = imread('racinggame.PNG');
imshow(racing,'Parent', handles.racinggame_axes);
% Choose default command line output for WelcomeGUI_sec046_team02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes WelcomeGUI_sec046_team02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WelcomeGUI_sec046_team02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Overview_pb.
function Overview_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Overview_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OverviewGUI_sec046_team02  %opens overview GUI
close(WelcomeGUI_sec046_team02)   %closes welcome GUI
% --- Executes on button press in credits_pb.
function credits_pb_Callback(hObject, eventdata, handles)
% hObject    handle to credits_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CreditsGUI_sec46_team02 %opens credits GUI
close(WelcomeGUI_sec046_team02)   %closes welcome GUI

% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
WhereNextGUI_sec46_team02  %opens where next GUI
close(WelcomeGUI_sec046_team02)   %closes welcome GUI

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
HelpGUI_sec46_team02  %opens help GUI
close(WelcomeGUI_sec046_team02)   %closes welcome GUI

% --- Executes on button press in triviagame_pb.
function triviagame_pb_Callback(hObject, eventdata, handles)
% hObject    handle to triviagame_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TopicSelectionGUI_sec046team02  %opens topic selection GUI
close(WelcomeGUI_sec046_team02)   %closes welcome GUI

% --- Executes on button press in racinggame_pb.
function racinggame_pb_Callback(hObject, eventdata, handles)
% hObject    handle to racinggame_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RacingGameGUI_sec46_team2  %opens racing game GUI
close(WelcomeGUI_sec046_team02)   %closes welcome GUI
