//
//  ArrayProblems.swift
//  ArraysHomeworkProblems
//
//  Created by C4Q  on 10/20/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Problem One
//Write an algorithm that moves every element in an array of Ints one space to the left

//Sample input: [0,1,2,3,4,5]
//Sample output: [1,2,3,4,5,0]

func problemOne(arr: [Int]) -> [Int] {
	var array = arr
	array.append(array.remove(at: 0))
	return array
}


//Problem Two
//Write an algorithm that moves every element in an array of Ints (x) spaces to the left

//Sample input: [0,1,2,3,4,5], 3
//Sample output: [3,4,5,0,1,2]

func problemTwo(arr: [Int], x: Int) -> [Int] {
	var array = arr
	let range = x % arr.count
	for index in 0..<range {
		array.remove(at: 0)
		array.append(arr[index])
	}
	return array
}


//Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
// A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

//Sample input 1: "abcde”, “eabcd"
//Sample output 1: true

//Sample input 2: "abcde", "abced"
//Sample output 2: false

//Sample input 3: "abc", "a"
//Sample output 3: false

func problemThree(strOne: String, strTwo: String) -> Bool {
	let range = strOne.characters.count
	guard range == strTwo.characters.count else { return false }
	var stringOne = Array(strOne.characters)
	let stringTwo = Array(strTwo.characters)
	for _ in 0..<range {
	stringOne.insert(stringOne.remove(at: range - 1), at: 0)
		if stringOne == stringTwo {
			return true
		}
	}
	return false
}


//Problem Four
//Given a square matrix of size 3 x 3 , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
  1  2  3
  4  5  6
 11  8  9
 */


//Sample Input: [[1,2,3],[4,5,6],[11,8,9]]
//Sample Output: 4

//|(1 + 5 + 9) - (3 + 5 + 11)| = |15 - 19| = |-4| = 4

func problemFour(arr: [[Int]]) -> Int {
	var firstDiagonal = 0
	var secondDiagonal = 0
	
	for x in 0..<arr.count {
		for y in 0..<arr.count {
			if x == y {
				firstDiagonal += arr[x][y]
			}
			if x + y == arr.count-1 {
				secondDiagonal += arr[x][y]
			}
		}
	}
	
	return abs(firstDiagonal - secondDiagonal)
}


//Problem Five
//Given a square matrix of size n x n , calculate the absolute value of the difference between the sums of its diagonals.

//Input visualization
/*
 4 1 2 5 
 3 1 9 2
 4 1 3 8
 9 2 4 3
 */

//Sample Input: [[4,1,2,5],[3,1,9,2],[4,1,3,8],[9,2,4,3]]
//Sample Output: 13

//|(4 + 1 + 3 + 3) - (5 + 9 + 1 + 9)| = |11 - 24| = |-13| = 13

func problemFive(arr: [[Int]]) -> Int {
	
	var firstDiagonal = 0
	var secondDiagonal = 0
	
	for x in 0..<arr.count {
		for y in 0..<arr.count {
			if x == y {
				firstDiagonal += arr[x][y]
			}
			if x + y == arr.count-1 {
				secondDiagonal += arr[x][y]
			}
		}
	}
	
	return abs(firstDiagonal - secondDiagonal)
}

