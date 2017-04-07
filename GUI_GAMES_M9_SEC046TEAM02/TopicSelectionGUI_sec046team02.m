%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13200 Spring 2015
% Programmer(s) and Purdue Email Address(es):
% 1.  Alex Stevens steve130@purdue.edu
%
% Other Contributor(s) and Purdue Email Address(es):
% 1. Zane Johnson, john1464@purdue.edu
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
function varargout = TopicSelectionGUI_sec046team02(varargin)
% TOPICSELECTIONGUI_SEC046TEAM02 MATLAB code for TopicSelectionGUI_sec046team02.fig
%      TOPICSELECTIONGUI_SEC046TEAM02, by itself, creates a new TOPICSELECTIONGUI_SEC046TEAM02 or raises the existing
%      singleton*.
%
%      H = TOPICSELECTIONGUI_SEC046TEAM02 returns the handle to a new TOPICSELECTIONGUI_SEC046TEAM02 or the handle to
%      the existing singleton*.
%
%      TOPICSELECTIONGUI_SEC046TEAM02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TOPICSELECTIONGUI_SEC046TEAM02.M with the given input arguments.
%
%      TOPICSELECTIONGUI_SEC046TEAM02('Property','Value',...) creates a new TOPICSELECTIONGUI_SEC046TEAM02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TopicSelectionGUI_sec046team02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TopicSelectionGUI_sec046team02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TopicSelectionGUI_sec046team02

% Last Modified by GUIDE v2.5 09-Apr-2015 15:30:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TopicSelectionGUI_sec046team02_OpeningFcn, ...
                   'gui_OutputFcn',  @TopicSelectionGUI_sec046team02_OutputFcn, ...
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


% --- Executes just before TopicSelectionGUI_sec046team02 is made visible.
function TopicSelectionGUI_sec046team02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TopicSelectionGUI_sec046team02 (see VARARGIN)

% Choose default command line output for TopicSelectionGUI_sec046team02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TopicSelectionGUI_sec046team02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TopicSelectionGUI_sec046team02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in art_pb.
function art_pb_Callback(hObject, eventdata, handles)
global topic;
topic = 3;
questionGUI_sec046_team02(topic)
close(TopicSelectionGUI_sec046team02)

% hObject    handle to art_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in history_pb.
function history_pb_Callback(hObject, eventdata, handles)
global topic;
topic = 2;
questionGUI_sec046_team02(topic)
close(TopicSelectionGUI_sec046team02)
% hObject    handle to history_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in science_pb.
function science_pb_Callback(hObject, eventdata, handles)
global topic;
topic = 1;
questionGUI_sec046_team02
close(TopicSelectionGUI_sec046team02)
% hObject    handle to science_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sports_pb.
function sports_pb_Callback(hObject, eventdata, handles)
global topic;
topic = 4;
questionGUI_sec046_team02(topic)
close(TopicSelectionGUI_sec046team02)
% hObject    handle to sports_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
WhereNextGUI_sec46_team02
close(TopicSelectionGUI_sec046team02)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
global help;
help = 1;
HelpGUI_sec46_team02

% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
