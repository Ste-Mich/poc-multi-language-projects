#[no_mangle]
pub extern "C" fn factorial_rust(n: i32) -> i32 {
    if n < 0 {
        -1
    }
    else if n <= 1 {
        1
    } else {
        n * factorial_rust(n - 1)
    }
}
