use arma_rs::{rv, rv_handler};

// Required
// This is called when the Arma server requests the DLL version
#[rv_handler]
fn init() {}

// Required
#[rv]
#[allow(dead_code)]
fn is_arma3(version: u8) -> bool {
    version == 3
}
