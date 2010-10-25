package com.hedymacferran.website
{
	import com.hedymacferran.website.controller.ApplicationStartedCommand;
	import com.hedymacferran.website.controller.FlashBugLogCommand;
	import com.hedymacferran.website.controller.PopulateModelCommand;
	import com.hedymacferran.website.events.FlashBugEvent;
	import com.hedymacferran.website.interfaces.ICSSService;
	import com.hedymacferran.website.interfaces.IDataService;
	import com.hedymacferran.website.model.HedyModel;
	import com.hedymacferran.website.model.services.CSSService;
	import com.hedymacferran.website.model.services.JSONService;
	import com.hedymacferran.website.signals.ApplicationStarted;
	import com.hedymacferran.website.signals.InitView;
	import com.hedymacferran.website.signals.PopulateModel;
	import com.hedymacferran.website.view.ApplicationMediator;
	import com.hedymacferran.website.view.ApplicationView;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.SignalContext;

    public class HedyContext extends SignalContext
    {
        private static const CLASS_NAME:String          = "HedyContext";
        private static const DATA_TYPE:String           = "json";

        public function HedyContext(contextView:DisplayObjectContainer = null, autoStartup:Boolean = true)
        {
            super(contextView, autoStartup);
        }

        override public function startup():void
        {
			
			// Map Services
            if (DATA_TYPE == "json")
                injector.mapSingletonOf(IDataService, JSONService);
						
            injector.mapSingletonOf(ICSSService, CSSService);
            injector.mapSingleton(HedyModel);
			
			// Map Signals
			injector.mapSingleton(InitView);
			
			// Map Signals to Commands
			signalCommandMap.mapSignalClass(PopulateModel, PopulateModelCommand);
			commandMap.mapEvent(FlashBugEvent.CONSOLE_LOG, FlashBugLogCommand, FlashBugEvent, false);

			// Map Mediators
			mediatorMap.mapView(ApplicationView, ApplicationMediator);
            contextView.addChild(new ApplicationView());
			
			// Startup
			ApplicationStarted(signalCommandMap.mapSignalClass(
				ApplicationStarted, ApplicationStartedCommand, true)).dispatch();
        }

    }
	
}