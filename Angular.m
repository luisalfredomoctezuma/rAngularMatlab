function varargout = Angular(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Angular_OpeningFcn, ...
                   'gui_OutputFcn',  @Angular_OutputFcn, ...
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
function Angular_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
global alfa beta theta;
alfa=0; beta=0; theta=0;
dibuja;
set(gcf,'toolbar','figure')
guidata(hObject, handles);
function varargout = Angular_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function pushbutton1_Callback(hObject, eventdata, handles)
global alfa;
alfa=alfa-5; dibuja;
function pushbutton2_Callback(hObject, eventdata, handles)
global alfa;
alfa=alfa+5; dibuja;

function pushbutton3_Callback(hObject, eventdata, handles)
global beta
beta=beta-5; dibuja;

function pushbutton4_Callback(hObject, eventdata, handles)
global beta
beta=beta+5; dibuja;

function pushbutton5_Callback(hObject, eventdata, handles)
global theta
theta=theta-5; dibuja;
function pushbutton6_Callback(hObject, eventdata, handles)
global theta
theta=theta+5; dibuja;
