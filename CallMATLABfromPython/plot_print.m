function plot_print(x,y,plotName)
    fig = figure('visible','off');
    plot(x,y);
    print(fig,'-djpeg',[plotName,'.jpg'])
end