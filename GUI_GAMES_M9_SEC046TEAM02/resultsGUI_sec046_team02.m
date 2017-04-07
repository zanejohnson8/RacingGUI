function varargout = resultsGUI_sec046_team02(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13200 Spring 2015
% Programmer(s) and Purdue Email Address(es):
% 1. Alex, steve130@purdue.edu
%
% Other Contributor(s) and Purdue Email Address(es):
% 1. Name login@purdue.edu
%
% Section #: 046Team #:02
% Assignment: GUI GAMES Project
%
% Academic Integrity Statement:
% I/We have not used source code obtained from
% any other unauthorized source, either modified
% or unmodified. Neither have I/we provided access
% to my/our code to another. The project I/we am/are
% submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESULTSGUI_SEC046_TEAM02 MATLAB code for resultsGUI_sec046_team02.fig
%      RESULTSGUI_SEC046_TEAM02, by itself, creates a new RESULTSGUI_SEC046_TEAM02 or raises the existing
%      singleton*.
%
%      H = RESULTSGUI_SEC046_TEAM02 returns the handle to a new RESULTSGUI_SEC046_TEAM02 or the handle to
%      the existing singleton*.
%
%      RESULTSGUI_SEC046_TEAM02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTSGUI_SEC046_TEAM02.M with the given input arguments.
%
%      RESULTSGUI_SEC046_TEAM02('Property','Value',...) creates a new RESULTSGUI_SEC046_TEAM02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultsGUI_sec046_team02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultsGUI_sec046_team02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultsGUI_sec046_team02

% Last Modified by GUIDE v2.5 08-Apr-2015 09:13:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultsGUI_sec046_team02_OpeningFcn, ...
                   'gui_OutputFcn',  @resultsGUI_sec046_team02_OutputFcn, ...
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


% --- Executes just before resultsGUI_sec046_team02 is made visible.
function resultsGUI_sec046_team02_OpeningFcn(hObject, eventdata, handles, varargin)
global qRight; 
switch qRight%a switch statement that displays a different message depending on how many question you got right
    case 1
        response = 'You got a score of 1/10, you can do better!';
        set(handles.score_st,'String',response)
    case 2
        response = 'You got a score of 2/10, Thats only a 20%!';
        set(handles.score_st,'String',response)
    case 3
        response = 'You got a score of 3/10, ONLY A THIRD? COME ON!';
         set(handles.score_st,'String',response)
    case 4
        response = 'You got a score of 4/10, Study Harder!';
         set(handles.score_st,'String',response)
    case 5
        response = 'You got a score of 5/10, Halfway there!'; 
        set(handles.score_st,'String',response)
    case 6
        response = 'You got a score of 6/10, that is an ok score, you can do better!';
         set(handles.score_st,'String',response)
    case 7
        response = 'You got a score of 7/10, You are smart!';
         set(handles.score_st,'String',response)
    case 8
        response = 'You got a score of 8/10, Pretty Good!';
         set(handles.score_st,'String',response)
    case 9
        response = 'You got a score of 9/10, Awesome!';
         set(handles.score_st,'String',response)
    case 10
        response = 'You got a score of 10/10, You are like Albert Einstein!';
         set(handles.score_st,'String',response)
    otherwise
        set(handles.score_st,'String','You got a Zero, youre not even trying')
end

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultsGUI_sec046_team02 (see VARARGIN)

% Choose default command line output for resultsGUI_sec046_team02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultsGUI_sec046_team02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultsGUI_sec046_team02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
global qRight;
qRight = 0;
WhereNextGUI_sec46_team02
close(resultsGUI_sec046_team02)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
