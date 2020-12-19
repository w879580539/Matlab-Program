function showLatex(str)
% showLatex(str)显示公式
%% 如果str是sym型变量，转化为Latex字符串   
if isa(str,'sym')
    str=latex(str);
end
%% 
if ~ischar(str)
    disp('Your input must be a char');
    return
else
    str=strcat('$$',str);
    str=strcat(str,'$$');
    h=figure('name','show EQ','NumberTitle','off',...
        'menubar','none','toolbar','none',...
        'position',[50,50,1000,300]);
    color=get(h,'color');
    ha=axes('parent',h,'xcolor',color,'ycolor',color,'color',color,...
        'position',[0,0,1,1]);
    text('string',str,'interpreter','latex','fontsize',18,...
        'position',[0.1,0.5]);
end

