//
//  Array2D.swift
//  Swiftris
//
//  Created by Matthew Allen Lin on 8/30/15.
//  Copyright (c) 2015 Matthew Allen Lin. All rights reserved.
//

//#1
class Array2D<T> {
    let columns: Int
    let rows: Int
    
    //#2
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        //#3
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    //#4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(rows * columns) + columns]
        }
        
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}
