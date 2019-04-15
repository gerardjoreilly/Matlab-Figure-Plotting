% Call the startup function
run('startup.m');

% Create some random data like a hazard curve to plot
s=logspace(-2,1,20);
H(1,:)=7e-4*exp(-2.0*log(s)-0.20*log(s).^2);
H(2,:)=7e-4*exp(-3.0*log(s)-0.30*log(s).^2);

%% Create a single plot

% You need to create the figure and assign it a handle.
fig_h=figure;

% These are standard enough to create the grid, allow multiple lines to be
% plotted and create a box around the figure. Just something to note,
% Matlab doesn't like it if you try to do a "hold on" before you start
% plotting using the loglog fucntion to create functions in logspace. In
% that case, its just better to plot as normal and then change the axis
% scale to log after the data is plotted. 
grid on; hold on; box on; 

% This is needed to set the figure dimension and font size up before 
% plotting. Set the figure's fontsize to "fs2" which is the second tier
% font size, then use "fs1" for the axis labels. For the dimensions, use
% "fh1" and "fw1" for the height and width of a single figure. There are
% then other values for bigger figures. The value to be specified is in
% centimetres.
setFigureProps(fig_h,fs2,fh1,fw1);

% Plot in a loop using a custom function to plot markers
for i=1:2
    p(i)=plotm(s,H(i,:),cmap(i,:),'o',ms2,'-',lw3);
end

% Create the axis labels. These will be text with font size "fs1" followed
% by a comma and the symbol in italics and the unit of measure in square
% brackets.
xlabel('Spectral acceleration, {\it{Sa}}({\it{T}}_1)  [g]','fontsize',fs1);
ylabel('Hazard, {\it{H}}','fontsize',fs1);

% Set the axis limits and change the scale to logscale here instead of
% using the loglog function to plot
xlim([1e-2 1e1]);
ylim([1e-6 1e0]);
set(gca,'xscale','log','yscale','log');

% Add some text to the plot and specify where you want it either in actual
% coordinates or in normalized units, which means that you can say you want
% the text to be positioned at the halfway point in x and at 90% of the
% height, which would be 0.5,0.9
textplot(0.7,0.9,'Hazard curve 1 is in black','cm','none','none',fs2,'none','normalized',0);
textplot(0.1,0.5,'Hazard curve 2 is in red','cm','none','none',fs2,'none','normalized',90);

% Create the legend
legend([p(1) p(2)],'Hazard curve 1','Hazard curve 2','location','southwest');

% Save the plot as a pdf using pdfUI. This will require just the file name,
% figure handle and a flag. This flag is 1 for cases when you want to print
% the figure to a file straight away and close the figure. Put a 0 and 
% Matlab will wait until you manually say to do with the figure still on 
% screen. This way, you can manually move things like the legend or text
% etc. easily before printing.
pdfUI('Figure1.pdf',fig_h,1);

%% Create a double plot

% This will create a figure with two plots. Many of the issues encountered
% above will be repeated.


fig_h=figure;
setFigureProps(fig_h,fs2,fh1,fw2); % In this case we make a wider figure

% Now we need to create the dimensions we want for the subplots
spw=0.42; % This is the individal subplot's width, normalised to the paper size
sph=0.75; % This is the individal subplot's height, normalised to the paper size
spx=0.03; % This is the spacing in the x direction between the subplots.

% Create an array to position the plots (There are probably more expedite
% ways of doing this). Since you need to input the co-ordinates of the
% bottom left hand corner and then specify the subplot height and width we
% create the following:

% Left 
l(1)=0.10; 
l(2)=l(1)+spx+spw;

% Bottom
b(1)=0.22;

% ------ Create the first subplot on the left
axes('Parent',fig_h,'Units','normalized','position',[l(1) b(1) spw sph]); 
grid on; hold on;  box on; % Need to include these here now
plotm(s,H(1,:),cmap(1,:),'o',ms2,'-',lw3);

% Set the axis limits
xlim([1e-2 1e1]);
ylim([1e-6 1e0]);
set(gca,'xscale','log','yscale','log');

xlabel('Spectral acceleration, {\it{Sa}}({\it{T}}_1)  [g]','fontsize',fs1);
ylabel('Hazard, {\it{H}}','fontsize',fs1);

% Include a subcaption below the text here. Getting the numbers right to
% position it requires a bit of trial and error
textplot(0.5,-0.23,'(a) Hazard curve 1','cm','none','none',fs1,'none','normalized',0);


% ------ Create the second subplot on the right
axes('Parent',fig_h,'Units','normalized','position',[l(2) b(1) spw sph]); 
grid on; hold on;  box on; % Need to include these here now
plotm(s,H(2,:),cmap(2,:),'o',ms2,'-',lw3);

% Set the axis limits
xlim([1e-2 1e1]);
ylim([1e-6 1e0]);
set(gca,'xscale','log','yscale','log');

% Since the y-axis is the same in both subplots, we don't put an axis label
% here and remove the numbers to tighten the plot up a bit. Just need to
% take care that the scales are the same.
set(gca,'yticklabels','');

xlabel('Spectral acceleration, {\it{Sa}}({\it{T}}_1)  [g]','fontsize',fs1);

textplot(0.5,-0.23,'(b) Hazard curve 2','cm','none','none',fs1,'none','normalized',0);

% Print to a pdf as before
pdfUI('Figure2.pdf',fig_h,1);



