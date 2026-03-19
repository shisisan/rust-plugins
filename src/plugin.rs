use log::info;
use samp::plugin::SampPlugin;

pub struct SampP;

impl SampPlugin for SampP {
    fn on_load(&mut self) {
        info!("samp_p Loaded!");
    }

    fn on_unload(self: Box<SampP>) {
        info!("samp_p Unloaded!");
    }
}
