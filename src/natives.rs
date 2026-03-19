use samp::prelude::*;
use samp::native;
use samp::error::AmxResult;

impl super::SampP {
    #[native(name = "Foo")]
    pub fn foo(&mut self, _amx: &Amx) -> AmxResult<bool> {
        Ok(true)
    }

    #[native(name = "BarUnique")]
    pub fn bar_unique(&mut self, _amx: &Amx) -> AmxResult<i32> {
        Ok(42)
    }
}
