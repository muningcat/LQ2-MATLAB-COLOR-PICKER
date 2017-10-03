function varargout = LQ2(varargin)
% LQ2 MATLAB code for LQ2.fig
%      LQ2, by itself, creates a new LQ2 or raises the existing
%      singleton*.
%
%      H = LQ2 returns the handle to a new LQ2 or the handle to
%      the existing singleton*.
%
%      LQ2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LQ2.M with the given input arguments.
%
%      LQ2('Property','Value',...) creates a new LQ2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LQ2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LQ2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LQ2

% Last Modified by GUIDE v2.5 03-Oct-2017 08:46:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LQ2_OpeningFcn, ...
                   'gui_OutputFcn',  @LQ2_OutputFcn, ...
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


% --- Executes just before LQ2 is made visible.
function LQ2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LQ2 (see VARARGIN)

% Choose default command line output for LQ2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LQ2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LQ2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in colorsOption.
function colorsOption_Callback(hObject, eventdata, handles)
% hObject    handle to colorsOption (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns colorsOption contents as cell array
%        contents{get(hObject,'Value')} returns selected item from colorsOption


% --- Executes during object creation, after setting all properties.
function colorsOption_CreateFcn(hObject, eventdata, handles)
% hObject    handle to colorsOption (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

i = getimage(handles.axes1);
str = get(hObject, 'String');
val = get(hObject, 'Value');
switch str{val}
    case 'RED'
        
    case 'GREEN'
        
    case 'BLUE'
end
  
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in loadBtn.
function loadBtn_Callback(hObject, eventdata, handles)
% hObject    handle to loadBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('object.png');
global image
image = a;
imshow(a, 'Parent', handles.axes1);

% --- Executes on button press in origBtn.
function origBtn_Callback(hObject, eventdata, handles)
% hObject    handle to origBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
a = image;
imshow(a, 'Parent', handles.axes1);

