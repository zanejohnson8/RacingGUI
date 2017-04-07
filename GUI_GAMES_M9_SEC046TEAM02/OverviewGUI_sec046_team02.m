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
function varargout = OverviewGUI_sec046_team02(varargin)
% OVERVIEWGUI_SEC046_TEAM02 MATLAB code for OverviewGUI_sec046_team02.fig
%      OVERVIEWGUI_SEC046_TEAM02, by itself, creates a new OVERVIEWGUI_SEC046_TEAM02 or raises the existing
%      singleton*.
%
%      H = OVERVIEWGUI_SEC046_TEAM02 returns the handle to a new OVERVIEWGUI_SEC046_TEAM02 or the handle to
%      the existing singleton*.
%
%      OVERVIEWGUI_SEC046_TEAM02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OVERVIEWGUI_SEC046_TEAM02.M with the given input arguments.
%
%      OVERVIEWGUI_SEC046_TEAM02('Property','Value',...) creates a new OVERVIEWGUI_SEC046_TEAM02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OverviewGUI_sec046_team02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OverviewGUI_sec046_team02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OverviewGUI_sec046_team02

% Last Modified by GUIDE v2.5 08-Apr-2015 08:23:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OverviewGUI_sec046_team02_OpeningFcn, ...
                   'gui_OutputFcn',  @OverviewGUI_sec046_team02_OutputFcn, ...
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


% --- Executes just before OverviewGUI_sec046_team02 is made visible.
function OverviewGUI_sec046_team02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OverviewGUI_sec046_team02 (see VARARGIN)

% Choose default command line output for OverviewGUI_sec046_team02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OverviewGUI_sec046_team02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OverviewGUI_sec046_team02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
WhereNextGUI_sec46_team02  %opens where next GUI
close(OverviewGUI_sec046_team02)  %closes overview GUI
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
