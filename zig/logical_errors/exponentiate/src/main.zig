const std = @import("std");

// INFO: You do not need to modify anything in the main function.
pub fn main() void {
    // INFO: Data used in x_raise_y()
    const x: i32 = 3;
    const y: i32 = 2;
    const x_raise_y_result: i32 = x_raise_y(x, y);

    std.debug.print("3^2 = {d}", .{x_raise_y_result});
}

// INFO:
// This function is meant to exponentiate x by y.
// If x = 3 and y = 2. The result will be 3 to the power of 2.
// 3^2 = 9
// FIX: This returns the wrong number?
fn x_raise_y(x: i32, y: i32) i32 {
    return x ^ y;
}

// INFO: Run test by using "zig test main.zig" when in the same directory as main.zig
test "Checking Solution" {
    const x_raise_y_result = x_raise_y(3, 2);
    
    try std.testing.expect(x_raise_y_result == 9);
}
