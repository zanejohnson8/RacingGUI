function varargout = questionGUI_sec046_team02(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 13200 Spring 2015
% Programmer(s) and Purdue Email Address(es):
% 1. Alex, steve130@purdue.edu
%
% Other Contributor(s) and Purdue Email Address(es):
% 1. Name login@purdue.edu
%
% Section #: Team #:
% Assignment: GUI GAMES Project
%
% Academic Integrity Statement:
% I/We have not used source code obtained from
% any other unauthorized source, either modified
% or unmodified. Neither have I/we provided access
% to my/our code to another. The project I/we am/are
% submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% QUESTIONGUI_SEC046_TEAM02 MATLAB code for questionGUI_sec046_team02.fig
%      QUESTIONGUI_SEC046_TEAM02, by itself, creates a new QUESTIONGUI_SEC046_TEAM02 or raises the existing
%      singleton*.
%
%      H = QUESTIONGUI_SEC046_TEAM02 returns the handle to a new QUESTIONGUI_SEC046_TEAM02 or the handle to
%      the existing singleton*.
%
%      QUESTIONGUI_SEC046_TEAM02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUESTIONGUI_SEC046_TEAM02.M with the given input arguments.
%
%      QUESTIONGUI_SEC046_TEAM02('Property','Value',...) creates a new QUESTIONGUI_SEC046_TEAM02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before questionGUI_sec046_team02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to questionGUI_sec046_team02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help questionGUI_sec046_team02

% Last Modified by GUIDE v2.5 24-Apr-2015 07:25:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @questionGUI_sec046_team02_OpeningFcn, ...
                   'gui_OutputFcn',  @questionGUI_sec046_team02_OutputFcn, ...
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


% --- Executes just before questionGUI_sec046_team02 is made visible.
function questionGUI_sec046_team02_OpeningFcn(hObject, eventdata, handles, varargin)
global qRight;%declares the question right variable
qRight = 0;%changes the variable globally

       
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to questionGUI_sec046_team02 (see VARARGIN)

% Choose default command line output for questionGUI_sec046_team02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes questionGUI_sec046_team02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = questionGUI_sec046_team02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Outputs from this function are returned to the command line.
function varargout = figure1_ResizeFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in next_pb.
function next_pb_Callback(hObject, eventdata, handles)
global qRight;%delcares the qRight variable so that it can be used globally
global topic;% Declares the topic variable Globally so that a topic variable can be passed between functions and GUIS
global qNum;%enables the function to read the global variable, a tally of what number question we are on
global answer;%keeps track of what the answer fo the question is
if qNum == 2%checks to see if the answer to the first question is right
    if topic == 1%First Question for the Science topic, gets the answer from the user and checks to see if it is right
    answer = get(handles.b_rb,'Value');
    if answer
        qRight = 1;
    else
        qRight = 0;
    end
    elseif topic == 2%First Question for the History topic, gets the answer from the user and checks to see if it is right
        answer = get(handles.b_rb,'Value');
           if answer
                qRight = 1;
           else
                qRight = 0;
           end
    elseif topic == 3%First Question for the ART topic, gets the answer from the user and checks to see if it is right
        answer = get(handles.b_rb,'Value');
        if answer
        qRight = 1;
        else
        qRight = 0;
        end
    elseif topic == 4%First Question for the Sports topic, gets the answer from the user and checks to see if it is right
        answer = get(handles.c_rb,'Value');
        if answer
            qRight = 1;
        else
            qRight = 0;
        end
    end

end    

switch topic% A switch Statement to through the right questions depending on what topic you choose
    case 1%The Science Topic
        
switch qNum%cases for each question and tracking for how many questions the user gets right
    case 2 %each case sets up the question
        set(handles.qnumber_st,'String','2 :')
        set(handles.quest_st,'String','What is the Rarest blood type?')
        set(handles.a_rb,'String','A')
        set(handles.b_rb,'String','B')
        set(handles.c_rb,'String','AB')
        set(handles.d_rb,'String','O')
        imshow('bloodcells.jpg')
         qNum = qNum + 1;
        for lcv = 60:-1:0%a timer for each question that automatically goes to the next question if the user runs out of time
       
            set(handles.time_st,'String',lcv);

             pause(1)
             if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
             end    
         end
       
    case 3
        set(handles.qnumber_st,'String','3 :')
        set(handles.quest_st,'String','What is the most common blood type?')
        set(handles.a_rb,'String','A')
        set(handles.b_rb,'String','B')
        set(handles.c_rb,'String','AB')
        set(handles.d_rb,'String','O')
        qNum = qNum + 1;
         answer = get(handles.c_rb,'Value');%gets the answer for the previous question and checks it
        if answer
            qRight = qRight + 1;
            
            
        end
        
        for lcv = 60:-1:0
       
            set(handles.time_st,'String',lcv);

            pause(1)
        if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
        end 
         end
       
        
        
        
    case 4
        set(handles.qnumber_st,'String','4 :')
        set(handles.quest_st,'String','What Scientist discovered the X-Ray?')
        set(handles.a_rb,'String','Willhelm Roentgen')
        set(handles.b_rb,'String','Albert Einstien')
        set(handles.c_rb,'String','Nikki Lauda')
        set(handles.d_rb,'String','Jeremy Mckinnon')
        imshow('x-ray-hands.jpg')
        qNum = qNum + 1;
        
         answer = get(handles.d_rb,'Value');
        if answer 
            qRight = qRight + 1;
           
        end
         for lcv = 60:-1:0
       
        set(handles.time_st,'String',lcv);

       pause(1)
        if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
        end 
         end
       
        
    case 5
        set(handles.qnumber_st,'String','5 :')
        set(handles.quest_st,'String','What type of clouds are a sign of good weather??')
        set(handles.a_rb,'String','Cumulus')
        set(handles.b_rb,'String','Cumulonimbus')
        set(handles.c_rb,'String','Cirrus')
        set(handles.d_rb,'String','Nimbotratus')
        imshow('clouds.jpg')
         qNum = qNum + 1;
         answer = get(handles.a_rb,'Value');
        if answer
            qRight = qRight + 1;
            
        end
         
         for lcv = 60:-1:0
       
            set(handles.time_st,'String',lcv);

            pause(1)
             if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
             end 
         end
        
       
    case 6
        set(handles.qnumber_st,'String','6 :')
        set(handles.quest_st,'String','What disease did the first vaccine protect against?')
        set(handles.a_rb,'String','Malaria')
        set(handles.b_rb,'String','Polio')
        set(handles.c_rb,'String','Smallpox')
        set(handles.d_rb,'String','Measiles')
        imshow('vaccine.jpg')
        answer = get(handles.a_rb,'Value');
        qNum = qNum + 1;
         if answer
            qRight = qRight + 1;
            
        end
        
         for lcv = 60:-1:0
       
                set(handles.time_st,'String',lcv);

                pause(1)
                 if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
                 end 
         end
       
        
    case 7
        set(handles.qnumber_st,'String','7 :')
        set(handles.quest_st,'String','What color of flame is the hottest?')
        set(handles.a_rb,'String','Red')
        set(handles.b_rb,'String','Yellow')
        set(handles.c_rb,'String','White')
        set(handles.d_rb,'String','Blue')
        imshow('colored_fire_fluid.jpg')
        qNum = qNum + 1;
        answer = get(handles.c_rb,'Value');
        if answer
            qRight = qRight + 1;
            
        end
        
         for lcv = 60:-1:0
       
            set(handles.time_st,'String',lcv);

            pause(1)
             if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
             end 
         end
        
        
    case 8
        set(handles.qnumber_st,'String','8 :')
        set(handles.quest_st,'String','What does a horticulturist do?')
        set(handles.a_rb,'String','Grow Plants')
        set(handles.b_rb,'String','Study the earth')
        set(handles.c_rb,'String','Care for animals')
        set(handles.d_rb,'String','Studies birds')
        imshow('college-professor.jpg')
        qNum = qNum + 1;
        answer = get(handles.d_rb,'Value');
         if answer
            qRight = qRight + 1;
            
        end
        
         for lcv = 60:-1:0
       
            set(handles.time_st,'String',lcv);

            pause(1)
             if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
             end 
         end
        
        
    case 9
        set(handles.qnumber_st,'String','9 :')
        set(handles.quest_st,'String','What is the path followed by an electric current?')
        set(handles.a_rb,'String','Voltage')
        set(handles.b_rb,'String','Resistance')
        set(handles.c_rb,'String','Circuit')
        set(handles.d_rb,'String','Charge')
        imshow('electricity.jpg')
        qNum = qNum + 1;
         answer = get(handles.a_rb,'Value');
         if answer
            qRight = qRight + 1;
            
            
        end
        
         for lcv = 60:-1:0
       
            set(handles.time_st,'String',lcv);

             pause(1)
              if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
             end 
         end
       
        
    case 10
        set(handles.qnumber_st,'String','10 :')
        set(handles.quest_st,'String','On what planet would you weigh the most?')
        set(handles.a_rb,'String','Jupiter')
        set(handles.b_rb,'String','Uranus')
        set(handles.c_rb,'String','Neptune')
        set(handles.d_rb,'String','Pluto')
        imshow('planet2.jpg')
         qNum = qNum + 1;
          answer = get(handles.c_rb,'Value');
         if answer
            qRight = qRight + 1;
            
        end
       
         
         for lcv = 60:-1:0
       
             set(handles.time_st,'String',lcv);

             pause(1)
              if lcv == 0
                 next_pb_Callback(hObject, eventdata, handles)
             end 
         end
       
    otherwise
        answer = get(handles.a_rb,'Value');
         if answer
            qRight = qRight + 1;
            
         end
        
    
        resultsGUI_sec046_team02()%calls the results gui
        close(questionGUI_sec046_team02)%closes the question gui
        qNum = 2;%resets the gui in case the user wants to play again

end
    case 2%History Questions
        switch qNum
            case 2
                 set(handles.qnumber_st,'String','2 :')
                 set(handles.quest_st,'String','Who is on the American $100 Bill?')
                 set(handles.a_rb,'String','Thomas Edison')
                 set(handles.b_rb,'String','Ben Franklin')
                 set(handles.c_rb,'String','Thomas Jefferson')
                 set(handles.d_rb,'String','Aberham Lincoln')
                 imshow('americanflag.jpg')
                qNum = qNum + 1;
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 3
                set(handles.qnumber_st,'String','3 :')
                set(handles.quest_st,'String','What creature is half man half goat?')
                set(handles.a_rb,'String','Satyr')
                set(handles.b_rb,'String','Centaur')
                set(handles.c_rb,'String','griffin')
                set(handles.d_rb,'String','Pheonix')
                imshow('Satyr.jpg')
                qNum = qNum + 1;
                answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 4
                set(handles.qnumber_st,'String','4 :')
                set(handles.quest_st,'String','What Ancient People lived in Circular Houses')
                set(handles.a_rb,'String','Roman')
                set(handles.b_rb,'String','Greek')
                set(handles.c_rb,'String','Arabic')
                set(handles.d_rb,'String','Celtic')
                imshow('roundhouse.jpg')    
                qNum = qNum + 1;
                answer = get(handles.a_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 5
                set(handles.qnumber_st,'String','5 :')
                set(handles.quest_st,'String','What Does CIA stand for?')
                set(handles.a_rb,'String','Cumulative Interest of America')
                set(handles.b_rb,'String','Central Inteligence Agency')
                set(handles.c_rb,'String','Cooking Institute of America')
                set(handles.d_rb,'String','Changing Inanimate Animals')
                imshow('cia.jpg')
                qNum = qNum + 1;
                answer = get(handles.d_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                       next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 6
                set(handles.qnumber_st,'String','6 :')
                set(handles.quest_st,'String','What is the fastest growing company in history?')
                set(handles.a_rb,'String','Google')
                set(handles.b_rb,'String','McDonalds')
                set(handles.c_rb,'String','Microsoft')
                set(handles.d_rb,'String','Apple')
                imshow('company.jpg')
                qNum = qNum + 1;
                answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                       set(handles.time_st,'String',lcv);

                       pause(1)
                        if lcv == 0
                            next_pb_Callback(hObject, eventdata, handles)
                        end 
                end
            case 7
                set(handles.qnumber_st,'String','7 :')
                set(handles.quest_st,'String','What is the name of the historical event where a lone man stands in front of a tank?')
                set(handles.a_rb,'String','Battle of Lexington')
                set(handles.b_rb,'String','Hiroshima')
                set(handles.c_rb,'String','Tiananmen Square')
                set(handles.d_rb,'String','Pearl Harbor')
                imshow('tianasquare.jpg')
                qNum = qNum + 1;
                answer = get(handles.d_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                         next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 8
                set(handles.qnumber_st,'String','8 :')
                set(handles.quest_st,'String','Who gave the "I Have a Dream Speech"?')
                set(handles.a_rb,'String','Martin Luther King Jr.')
                set(handles.b_rb,'String','Malcolm X')
                set(handles.c_rb,'String','Benito Juarez')
                set(handles.d_rb,'String','Al Capone')
                imshow('Dream.jpg')
                qNum = qNum + 1;
                answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                    end 
                end
            case 9
                set(handles.qnumber_st,'String','9 :')
                set(handles.quest_st,'String','Who was Martin Luther Kings inspiration?')
                set(handles.a_rb,'String','Malcom X')
                set(handles.b_rb,'String','Al Capone')
                set(handles.c_rb,'String','Ghandi')
                set(handles.d_rb,'String','Elon Musk')
                imshow('MLK.jpg')
                qNum = qNum + 1;
                answer = get(handles.a_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                      set(handles.time_st,'String',lcv);

                      pause(1)
                       if lcv == 0
                            next_pb_Callback(hObject, eventdata, handles)
                       end 
                end
            case 10
                set(handles.qnumber_st,'String','10 :')
                set(handles.quest_st,'String','Who was the first man on the moon?')
                set(handles.a_rb,'String','Buzz Aldrin')
                set(handles.b_rb,'String','Neil Armstrong')
                set(handles.c_rb,'String','Louis Armstrong')
                set(handles.d_rb,'String','Chick Evans')
                imshow('Moon-landing.jpg')
                qNum = qNum + 1;
                answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            otherwise
                answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
             resultsGUI_sec046_team02()
        close(questionGUI_sec046_team02)
        qNum = 2;%resets the gui in case the user wants to play again        
        end
    case 3%Art Questions
        switch qNum
            case 2
                set(handles.qnumber_st,'String','2 :')
                set(handles.quest_st,'String','How many strings does a Cello have?')
                set(handles.a_rb,'String','3')
                set(handles.b_rb,'String','8')
                set(handles.c_rb,'String','4')
                set(handles.d_rb,'String','6')
                imshow('musicnotes.jpg')
                qNum = qNum + 1;
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);
    
                     pause(1)
                      if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                      end 
                end
            case 3
                set(handles.qnumber_st,'String','3 :')
                set(handles.quest_st,'String','What grows in a crescendo')
                set(handles.a_rb,'String','Silence')
                set(handles.b_rb,'String','Speed')
                set(handles.c_rb,'String','Volume')
                set(handles.d_rb,'String','Atriculation')
                imshow('crescendo.jpg')
                qNum = qNum + 1;
                answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                     set(handles.time_st,'String',lcv);

                     pause(1)
                      if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                      end 
                 end
            case 4
                set(handles.qnumber_st,'String','4 :')
                set(handles.quest_st,'String','Where is Salvador Dali from?')
                set(handles.a_rb,'String','Italy')
                set(handles.b_rb,'String','Spain')
                set(handles.c_rb,'String','Mexico')
                set(handles.d_rb,'String','Argentina')
                imshow('dali.jpg')
                qNum = qNum + 1;
                answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                     set(handles.time_st,'String',lcv);

                     pause(1)
                      if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                      end 
                end
            case 5
                set(handles.qnumber_st,'String','5 :')
                set(handles.quest_st,'String','What type of creature was Medusa?')
                set(handles.a_rb,'String','Centaur')
                set(handles.b_rb,'String','Human')
                set(handles.c_rb,'String','Mermaid')
                set(handles.d_rb,'String','Gorgon')
                imshow('medusa.jpg')
                qNum = qNum + 1;
                answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                 end
            case 6 
                set(handles.qnumber_st,'String','6 :')
                set(handles.quest_st,'String','What famous artist had a soup can as one of his most famous peices?')
                set(handles.a_rb,'String','Warhol')
                set(handles.b_rb,'String','Monet')
                set(handles.c_rb,'String','Picasso')
                set(handles.d_rb,'String','Davinci')
                imshow('soup.jpg')
                qNum = qNum + 1;
                 answer = get(handles.d_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                 end
            case 7
                set(handles.qnumber_st,'String','7 :')
                set(handles.quest_st,'String','What is the Van Goghs first name?')
                set(handles.a_rb,'String','Claude')
                set(handles.b_rb,'String','Auguste')
                set(handles.c_rb,'String','Vincent')
                set(handles.d_rb,'String','James')
                imshow('vangogh.jpg')
                qNum = qNum + 1;
                 answer = get(handles.a_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 8
                set(handles.qnumber_st,'String','8 :')
                set(handles.quest_st,'String','What WW2 leader failed as an art student?')
                set(handles.a_rb,'String','Joseph Stalin')
                set(handles.b_rb,'String','Adolf Hitler')
                set(handles.c_rb,'String','Benito Mussolini')
                set(handles.d_rb,'String','Harry S. Truman')
                imshow('three.jpg')
                qNum = qNum + 1;
                answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                     pause(1)
                      if lcv == 0
                            next_pb_Callback(hObject, eventdata, handles)
                      end 
                end
            case 9 
                set(handles.qnumber_st,'String','9 :')
                set(handles.quest_st,'String','What instrument does Louis Armstrong play?')
                set(handles.a_rb,'String','Saxophone')
                set(handles.b_rb,'String','Drums')
                set(handles.c_rb,'String','Trombone')
                set(handles.d_rb,'String','Trumpet')
                imshow('louisarmstrong.jpg')
                qNum = qNum + 1;
                answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 10
                set(handles.qnumber_st,'String','10 :')
                set(handles.quest_st,'String','What is the name of the oven ceramics are fired in?')
                set(handles.a_rb,'String','Bonfire')
                set(handles.b_rb,'String','Kiln')
                set(handles.c_rb,'String','Fireplace')
                set(handles.d_rb,'String','Grill')
                imshow('kiln.jpg')
                qNum = qNum + 1;
                answer = get(handles.d_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            otherwise
                answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
         resultsGUI_sec046_team02()
        close(questionGUI_sec046_team02)%closes the question gui
        qNum = 2;%resets the gui in case the user wants to play again
        end
        
    case 4%Sports Questions
        
        switch qNum
            case 2
                set(handles.qnumber_st,'String','2 :')
                set(handles.quest_st,'String','What is the last NCAA college to 3-peat?')
                set(handles.a_rb,'String','North Carolina')
                set(handles.b_rb,'String','Kentucky')
                set(handles.c_rb,'String','UCLA')
                set(handles.d_rb,'String','Alabama')
                imshow('NCAA.jpg')
                qNum = qNum + 1;
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                    end 
                end
            case 3
                set(handles.qnumber_st,'String','3 :')
                set(handles.quest_st,'String','What college has appeared in the most football bowl games?')
                set(handles.a_rb,'String','Alabama')
                set(handles.b_rb,'String','Kentucky')
                set(handles.c_rb,'String','North Carolina')
                set(handles.d_rb,'String','Purdue')
                imshow('teams.png')
                qNum = qNum + 1;
                 answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 4
                set(handles.qnumber_st,'String','4 :')
                set(handles.quest_st,'String','Where did John Wooden play?')
                set(handles.a_rb,'String','Purdue')
                set(handles.b_rb,'String','North Carolina')
                set(handles.c_rb,'String','Alabama')
                set(handles.d_rb,'String','Stanford')
                imshow('wooden.jpg')
                qNum = qNum + 1;
                 answer = get(handles.a_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 5
                set(handles.qnumber_st,'String','5 :')
                set(handles.quest_st,'String','Who has the longest winning streak in college basketball?')
                set(handles.a_rb,'String','Purdue')
                set(handles.b_rb,'String','Albama')
                set(handles.c_rb,'String','Kentucky')
                set(handles.d_rb,'String','North Carolina')
                imshow('Basketball.png')
                qNum = qNum + 1;
                 answer = get(handles.a_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 6
                set(handles.qnumber_st,'String','6 :')
                set(handles.quest_st,'String','Who is the only freshman to win the Naismith award?')
                set(handles.a_rb,'String','Micheal Jordan ')
                set(handles.b_rb,'String','Scotty Pippin')
                set(handles.c_rb,'String','Derek Rose')
                set(handles.d_rb,'String','Kevin Durant')
                imshow('naismith.jpg')
                qNum = qNum + 1;
                 answer = get(handles.c_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 7
                set(handles.qnumber_st,'String','7 :')
                set(handles.quest_st,'String','Who is the only Heismann trophy winner to play defense?')
                set(handles.a_rb,'String','Charles Woodson')
                set(handles.b_rb,'String','Tom Brady')
                set(handles.c_rb,'String','Peyton Manning')
                set(handles.d_rb,'String','Jay Cutler')
                imshow('heismann.jpg')
                qNum = qNum + 1;
                 answer = get(handles.d_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 8
                set(handles.qnumber_st,'String','8 :')
                set(handles.quest_st,'String','What college football team set the record for most losses?')
                set(handles.a_rb,'String','Indiana University')
                set(handles.b_rb,'String','Army')
                set(handles.c_rb,'String','Purdue')
                set(handles.d_rb,'String','Ohio State')
                imshow('americanfootball.jpg')
                qNum = qNum + 1;
                 answer = get(handles.a_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                     set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 9
                set(handles.qnumber_st,'String','9 :')
                set(handles.quest_st,'String','Who threw the most TDs in a single college season?')
                set(handles.a_rb,'String','Tom Brady')
                set(handles.b_rb,'String','Peyton Manning')
                set(handles.c_rb,'String','Brett Favre')
                set(handles.d_rb,'String','Colt Brennan')
                imshow('touchdown.png')
                qNum = qNum + 1;
                 answer = get(handles.b_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            case 10
                set(handles.qnumber_st,'String','10 :')
                set(handles.quest_st,'String','What School is Purdue better than?')
                set(handles.a_rb,'String','Indiana University')
                set(handles.b_rb,'String','Indiana University')
                set(handles.c_rb,'String','Indiana University')
                set(handles.d_rb,'String','Indiana University')
                set(handles.none_rb,'String','Indiana University')
                imshow('PU.png')
                qNum = qNum + 1;
                 answer = get(handles.d_rb,'Value');
                if answer
                    qRight = qRight + 1;
            
            
                end
                
                
                 for lcv = 60:-1:0
       
                    set(handles.time_st,'String',lcv);

                    pause(1)
                     if lcv == 0
                        next_pb_Callback(hObject, eventdata, handles)
                     end 
                end
            otherwise
        qRight = qRight + 1;%allways gives the user a point for this question because the user will never be wrong        
        resultsGUI_sec046_team02()
        close(questionGUI_sec046_team02)%closes the question gui
        qNum = 2;%resets the gui in case the user wants to play again
        end
        
end
% hObject    handle to next_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
global qRight;
qRight = 0;%resets how many questions were gotten right
WhereNextGUI_sec46_team02%calls the where next GUI
close(questionGUI_sec046_team02)%closes the question GUI
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in start_pb.
function start_pb_Callback(hObject, eventdata, handles)
global topic;%declares topic globally so that the data is passed.



 %--------Sets the initial Question up--------
   if topic == 1%Science topic was selected and sets up the first question 
   
    set(handles.topic_st,'String','Science')
    set(handles.quest_st,'String','What Planet is named for the Roman god of Commerce, travel, and Theivery?')
    set(handles.a_rb,'String','Mars')
    set(handles.b_rb,'String','Mercury')
    set(handles.c_rb,'String','Venus')
    set(handles.d_rb,'String','Saturn') 
    imshow('planet.jpg');
   elseif topic == 2%History topic was selected and sets up the first question
    set(handles.topic_st,'String','History')
    set(handles.quest_st,'String','What were the spartans of ancient greece most known for?')
    set(handles.a_rb,'String','Poetry')
    set(handles.b_rb,'String','War')
    set(handles.c_rb,'String','Sports')
    set(handles.d_rb,'String','Love') 
    imshow('Spartan.jpg');
   elseif topic == 3%Art topic was selected and sets up the first question
    set(handles.topic_st,'String','Art')
    set(handles.quest_st,'String','Romanesque Art Prevailed in what time period?')
    set(handles.a_rb,'String','19th')
    set(handles.b_rb,'String','13th')
    set(handles.c_rb,'String','15th')
    set(handles.d_rb,'String','18th') 
    imshow('swirl.jpg');
   elseif topic == 4%Sports topic was selected and sets up the first question
    set(handles.topic_st,'String','Sports')
    set(handles.quest_st,'String','What is the college with the most NCAA basketball championships?')
    set(handles.a_rb,'String','Kentucky')
    set(handles.b_rb,'String','North Carolina')
    set(handles.c_rb,'String','UCLA')
    set(handles.d_rb,'String','Purdue') 
    imshow('basketball.jpg');
   end  
    %global variable to say what question we want to go to next
   global qNum;
   qNum = 2;
   set(handles.start_pb,'Enable','Off')%Disables the start button after it is pressed
   set(handles.start_pb,'Visible','Off')%makes the start button invisible after it is pressed
   for lcv = 60:-1:0%sets up the initial timer
       
        set(handles.time_st,'String',lcv);

       pause(1)
       if lcv == 0
           next_pb_Callback(hObject, eventdata, handles)%Automatically moves to the next question if time runs out
       end
  end
   
% hObject    handle to start_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
