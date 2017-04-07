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
function varargout = CreditsGUI_sec46_team02(varargin)
% CREDITSGUI_SEC46_TEAM02 MATLAB code for CreditsGUI_sec46_team02.fig
%      CREDITSGUI_SEC46_TEAM02, by itself, creates a new CREDITSGUI_SEC46_TEAM02 or raises the existing
%      singleton*.
%
%      H = CREDITSGUI_SEC46_TEAM02 returns the handle to a new CREDITSGUI_SEC46_TEAM02 or the handle to
%      the existing singleton*.
%
%      CREDITSGUI_SEC46_TEAM02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CREDITSGUI_SEC46_TEAM02.M with the given input arguments.
%
%      CREDITSGUI_SEC46_TEAM02('Property','Value',...) creates a new CREDITSGUI_SEC46_TEAM02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CreditsGUI_sec46_team02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CreditsGUI_sec46_team02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CreditsGUI_sec46_team02

% Last Modified by GUIDE v2.5 08-Apr-2015 08:11:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CreditsGUI_sec46_team02_OpeningFcn, ...
                   'gui_OutputFcn',  @CreditsGUI_sec46_team02_OutputFcn, ...
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


% --- Executes just before CreditsGUI_sec46_team02 is made visible.
function CreditsGUI_sec46_team02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CreditsGUI_sec46_team02 (see VARARGIN)

% Choose default command line output for CreditsGUI_sec46_team02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CreditsGUI_sec46_team02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CreditsGUI_sec46_team02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
WhereNextGUI_sec46_team02  %opens where next GUI
close(CreditsGUI_sec46_team02) %closes credit GUI

% --- Executes during object deletion, before destroying properties.
function text3_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
