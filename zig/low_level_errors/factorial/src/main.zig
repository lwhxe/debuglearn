const std = @import("std");

pub fn main() !void {
    const result: usize = factorial(20);
    std.debug.print("The result is: {d}", .{result});
}

// INFO: This is a factorial function.
// n! = n * (n - 1) * (n - 2) ... 1
// FIX: Were getting the wrong result, but can we get the correct one?
fn factorial(n: usize) usize {
    var result: usize = 1;
    for (1..n) |i| {
        result *%= i;
    }
    return result;
}

test "Checking Solution" {
    var correctness = false;

    const result: usize = factorial(40);
    for (1..41) |i| {
        if (result % i == 0) {
            if (i == 40) {
                std.debug.print("This is exactly how you should do it! Great Job!\n\n\n", .{});
                correctness = true;
            }
            continue;
        }
        std.debug.print("This is not correct, consider another method.\n\n\n", .{});
        break;
    }
    try std.testing.expect(correctness == true);
}
