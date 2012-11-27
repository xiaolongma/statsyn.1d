close all

modellist = {...
    'S_VPREMOON_Qp_novlvl'
    ...'VPREMOON_mod'
    ...'VPREMOON_original'
    ...'WEBER_2011_original'
    ...'WEBER_2011_original_nocrustgrad'
    ...'GB_2006_original'
    ...'VPREMOON_Qp_ori_10km_500m'
    ...'VPREMOON_Q7000_10km_500m'
    ...'VPREMOON_LIQc_Q7000_10km_500m'
    ...'VPREMOON_Q7000_gc05_nvlvl_10km_500m'
    'VPREMOON_Q7000_NOCORE_10km_500m'
    };


% Model columns:
% Depth (km) Radius (km) Vp(km/s) Vs(km/s) Density (gm/cm3)

%%
for ii=1:length(modellist)

    
    model = load(modellist{ii});
    
    figure(1)
    clf
           
    
    subplot(2,4,[1 2 5 6])
    
    
    hold on
       

    plot(model(:,3),model(:,1),'b-')
    plot(model(:,4),model(:,1),'r-')
    plot(model(:,5),model(:,1),'k-')

    
    title(sprintf('Velocity Model\n%s',modellist{ii}),'Interpreter','none')
    legend('v_p','v_s','density','Location','SO','Orientation','horizontal')
    set(gca,'ydir','reverse')
    xlabel('km/s or g/cm^3')
    ylabel('depth (km)')
    grid on
    ylim([0 1740])
    
    % Q
    subplot(2,4,[3 7])
    plot(model(:,6),model(:,1),'k-')
    legend('Q_i','Location','SO','Orientation','horizontal')
    set(gca,'ydir','reverse')
    xlabel('[-]')
%     ylabel('depth (km)')
    grid on
    ylim([0 1740])
    xlim([0 1.1*max(model(:,6))])
    title('Q_i')
    
    
    
    subplot(2,4,[4])
    hold on
   
    plot(model(:,3),model(:,1),'b-')
    plot(model(:,4),model(:,1),'r-')
    plot(model(:,5),model(:,1),'k-')

    
%     title(sprintf('Velocity Model\n%s',modellist{ii}),'Interpreter','none')
%     legend('v_p','v_s','density','Location','SO','Orientation','horizontal')
    set(gca,'ydir','reverse')
    xlabel('km/s or g/cm^3')
%     ylabel('depth (km)')
    grid on
    ylim([0 50])
    title('Top 50 km')
    
    
    
    
    
    
    ps = [10 8];
    set(gcf, 'PaperUnits', 'inches');
    set(gcf, 'PaperSize', ps);
    set(gcf, 'PaperPositionMode', 'manual');
    set(gcf, 'PaperPosition', [0 0 ps]);
    print(gcf, '-dpng', ['Figures/' modellist{ii} '_plot.png']);
    print(gcf, '-dpsc2', ['Figures/' modellist{ii} '_plot.eps']);
    
end

