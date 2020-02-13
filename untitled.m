function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 23-May-2017 22:45:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
function untitled_OpeningFcn(hObject, ~, handles, varargin)
handles.Fs=48000;
t=0:1/handles.Fs:1;
handles.in=chirp(t,0,1,handles.Fs/2);
handles.b1=[0.000723575 0 -0.000723575];
handles.a1=[1/2 -0.998544628 0.49855285];
handles.b2=[0.001445062 0 -0.001445062];
handles.a2=[1/2 -0.997077038 0.497109876];
handles.b3=[0.002904926 0 -0.002904926];
handles.a3=[1/2 -0.994057064  0.494190149 ];
handles.b4=[0.005776487 0 -0.005776487];
handles.a4=[1/2 -0.987917799 0.488447026];
handles.b5=[0.011422552 0 -0.011422552];
handles.a5=[1/2 -0.975062733  0.477154897];
handles.b6=[0.02234653  0 -0.02234653 ];
handles.a6=[1/2 -0.947134157  0.455306941 ];
handles.b7=[0.04286684 0 -0.04286684];
handles.a7=[1/2 -0.88311345  0.414266319];
handles.b8=[0.079552886   0 -0.079552886  ];
handles.a8=[1/2 -0.728235763  0.340894228  ];
handles.b9=[0.1199464  0 -0.1199464  ];
handles.a9=[1/2 -0.3176087   0.2601072 ];
handles.b10=[0.159603   0 -0.159603  ];
handles.a10=[1/2 0.4435172   0.1800994  ];
handles.out1=0;
handles.out2=0;
handles.out3=0;
handles.out4=0;
handles.out5=0;
handles.out6=0;
handles.out7=0;
handles.out8=0;
handles.out9=0;
handles.out10=0;
handles.out=0;
handles.gain1=1;
handles.gain2=1;
handles.gain3=1;
handles.gain4=1;
handles.gain5=1;
handles.gain6=1;
handles.gain7=1;
handles.gain8=1;
handles.gain9=1;
handles.gain10=1;
handles.gain=1;
handles.out1=filter(handles.b1,handles.a1,handles.in)*handles.gain1;
handles.out2=filter(handles.b2,handles.a2,handles.in)*handles.gain2;
handles.out3=filter(handles.b3,handles.a3,handles.in)*handles.gain3;
handles.out4=filter(handles.b4,handles.a4,handles.in)*handles.gain4;
handles.out5=filter(handles.b5,handles.a5,handles.in)*handles.gain5;
handles.out6=filter(handles.b6,handles.a6,handles.in)*handles.gain6;
handles.out7=filter(handles.b7,handles.a7,handles.in)*handles.gain7;
handles.out8=filter(handles.b8,handles.a8,handles.in)*handles.gain8;
handles.out9=filter(handles.b9,handles.a9,handles.in)*handles.gain9;
handles.out10=filter(handles.b10,handles.a10,handles.in)*handles.gain10;
handles.out=handles.out1+handles.out2+handles.out3+handles.out4+handles.out5+handles.out6+handles.out7+handles.out8+handles.out9+handles.out10;
handles.out=handles.out*handles.gain;
guidata(hObject,handles)
axes(handles.axes1);
plot(handles.out);
handles.output = hObject;
guidata(hObject, handles);
function varargout = untitled_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function Slider10_Callback(hObject, ~, handles)
handles.gain8=get(hObject,'Value');
guidata(hObject,handles);
function Slider10_CreateFcn(hObject, ~, ~)
% hObject    handle to Slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider8_Callback(hObject, ~, handles)
handles.gain7=get(hObject,'Value');
guidata(hObject,handles);
function Slider8_CreateFcn(hObject, ~, ~)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider1_Callback(hObject, ~, handles)
handles.gain1=get(hObject,'Value');
guidata(hObject,handles);
function Slider1_CreateFcn(hObject,~,~)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider2_Callback(hObject, ~, handles)
handles.gain9=get(hObject,'Value');
guidata(hObject,handles);
function Slider2_CreateFcn(hObject, ~, ~)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider3_Callback(hObject, ~, handles)
handles.gain5=get(hObject,'Value');
guidata(hObject,handles);
function Slider3_CreateFcn(hObject, ~, ~)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider4_Callback(hObject,~, handles)
handles.gain10=get(hObject,'Value');
guidata(hObject,handles);
function Slider4_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider5_Callback(hObject,~, handles)
handles.gain3=get(hObject,'Value');
guidata(hObject,handles);
function Slider5_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider7_Callback(hObject,~, handles)
handles.gain2=get(hObject,'Value');
guidata(hObject,handles);
function Slider7_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function slider9_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider10_CreateFcn(hObject, ~, ~)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider9_Callback(hObject, ~, handles)
handles.gain4=get(hObject,'Value');
guidata(hObject,handles);
function Slider9_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function Slider11_Callback(hObject, ~, handles)
handles.gain=get(hObject,'Value');
guidata(hObject,handles);
function Slider11_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function pushbutton1_Callback(hObject, ~, handles)
handles.iesire1=filter(handles.b1,handles.a1,handles.intrare)*handles.gain1;
handles.iesire2=filter(handles.b2,handles.a2,handles.intrare)*handles.gain2;
handles.iesire3=filter(handles.b3,handles.a3,handles.intrare)*handles.gain3;
handles.iesire4=filter(handles.b4,handles.a4,handles.intrare)*handles.gain4;
handles.iesire5=filter(handles.b5,handles.a5,handles.intrare)*handles.gain5;
handles.iesire6=filter(handles.b6,handles.a6,handles.intrare)*handles.gain6;
handles.iesire7=filter(handles.b7,handles.a7,handles.intrare)*handles.gain7;
handles.iesire8=filter(handles.b8,handles.a8,handles.intrare)*handles.gain8
handles.iesire9=filter(handles.b9,handles.a9,handles.intrare)*handles.gain9;
handles.iesire10=filter(handles.b10,handles.a10,handles.intrare)*handles.gain10;
handles.iesire=handles.iesire1+handles.iesire2+handles.iesire3+handles.iesire4+handles.iesire5+handles.iesire6+handles.iesire7+handles.iesire8+handles.iesire9+handles.iesire10
handles.iesire=handles.iesire*handles.gain;
guidata(hObject,handles)
axes(handles.axes1);
plot(handles.iesire);

function slider14_Callback(hObject, ~, handles)
handles.gain6=get(hObject,'Value');
guidata(hObject,handles);
function slider14_CreateFcn(hObject, ~, ~)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function pushbutton5_Callback(~, ~, handles)
sound(handles.in,handles.Fs)
function pushbutton6_Callback(hObject,~, handles)
handles.out1=filter(handles.b1,handles.a1,handles.in)*handles.gain1;
handles.out2=filter(handles.b2,handles.a2,handles.in)*handles.gain2;
handles.out3=filter(handles.b3,handles.a3,handles.in)*handles.gain3;
handles.out4=filter(handles.b4,handles.a4,handles.in)*handles.gain4;
handles.out5=filter(handles.b5,handles.a5,handles.in)*handles.gain5;
handles.out6=filter(handles.b6,handles.a6,handles.in)*handles.gain6;
handles.out7=filter(handles.b7,handles.a7,handles.in)*handles.gain7;
handles.out8=filter(handles.b8,handles.a8,handles.in)*handles.gain8;
handles.out9=filter(handles.b9,handles.a9,handles.in)*handles.gain9;
handles.out10=filter(handles.b10,handles.a10,handles.in)*handles.gain10;
handles.out=handles.out1+handles.out2+handles.out3+handles.out4+handles.out5+handles.out6+handles.out7+handles.out8+handles.out9+handles.out10;
handles.out=handles.out*handles.gain;
guidata(hObject,handles)
plot(handles.out);
guidata(hObject,handles);
sound(handles.out,handles.Fs)
% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(~, ~, ~)
