const std = @import("std");

pub fn main() !void {
    var array = [_]u8{12, 56, 72, 12, 123, 1};
    sort(&array);
    for (array) |num| {
        std.debug.print("{d}, ", .{num});
    }
}

// INFO: sort() is a modified bubble_sort() function.
// FIX: Why is sort() not give back the correct array?
fn sort(array: []u8) void {
    const length = @as(usize, array.len);

    for (0..length) |round| {
        const r = @as(usize, round);
        for (0..length - r - 1) |index| {
            if (array[index] > array[index + 1]) {
                swap(&array[index], &array[index+1]);
            }
        }
    }
}

fn swap(x: *u8, y: *u8) void {
    x.* ^= y.*;
    y.* ^= x.*;
    y.* ^= x.*;
}

// INFO: To run this test use command: "zig test main.zig", when in the same directory as main.zig.
test "Checking Solution" {
    var correctness = true;

    var array = [_]u8{12, 56, 72, 12, 123, 1};
    sort(&array);
    
    var check_array = [_]u8{12, 56, 72, 12, 123, 1};
    std.mem.sort(u8, &check_array, {}, std.sort.asc(u8));

    for (array, check_array) |i, j| {
        if (i != j) {
            std.debug.print("This is not the correct solution.\n\n\n", .{});
            correctness = false;
            break;
        }
    }

    try std.testing.expect(correctness);
}
