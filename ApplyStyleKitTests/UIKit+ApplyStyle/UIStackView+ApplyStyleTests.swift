//
//  UIStackView+ApplyStyleTests.swift
//  ApplyStyleKitTests
//
//  Created by 新堂 敬隆 on 2018/12/18.
//  Copyright © 2018年 shindyu. All rights reserved.
//

import XCTest

class UIStackView_ApplyStyleTests: XCTestCase {
    var stackView: UIStackView!

    override func setUp() {
        super.setUp()

        stackView = UIStackView()
    }

    func test_addArrangedSubview() {
        let view = UIView()

        stackView.addArrangedSubview(view)

        XCTAssertEqual(stackView.arrangedSubviews.count, 1)
        XCTAssertEqual(stackView.arrangedSubviews.last, view)
    }

    func test_removeArrangedSubview() {
        let view = UIView()

        stackView.addArrangedSubview(view)
        stackView.removeArrangedSubview(view)

        XCTAssertEqual(stackView.arrangedSubviews.last, view)
    }

    func test_insertArrangedSubview() {
        let view = UIView()

        stackView.insertArrangedSubview(view, at: 0)

        XCTAssertEqual(stackView.arrangedSubviews.first, view)
    }

    func test_axis() {
        let axis: NSLayoutConstraint.Axis = .horizontal

        stackView.axis(axis)

        XCTAssertEqual(stackView.axis, axis)
    }

    func test_distribution() {
        let distribution: UIStackView.Distribution = .equalSpacing
        stackView.distribution(distribution)
        XCTAssertEqual(stackView.distribution, distribution)
    }

    func test_alignment() {
        let alignment = true
        stackView.alignment(alignment)
        XCTAssertEqual(stackView.alignment, alignment)
    }

    func test_spacing() {
        let spacing = true
        stackView.spacing(spacing)
        XCTAssertEqual(stackView.spacing, spacing)
    }

    @available(iOS 11.0, *)
    func test_setCustomSpacing() {
        let setCustomSpacing = true
        stackView.setCustomSpacing(setCustomSpacing)
        XCTAssertEqual(stackView.setCustomSpacing, setCustomSpacing)
    }

    func test_isBaselineRelativeArrangement() {
        let isBaselineRelativeArrangement = true
        stackView.isBaselineRelativeArrangement(isBaselineRelativeArrangement)
        XCTAssertEqual(stackView.isBaselineRelativeArrangement, isBaselineRelativeArrangement)
    }

    func test_isLayoutMarginsRelativeArrangement() {
        let isLayoutMarginsRelativeArrangement = true
        stackView.isLayoutMarginsRelativeArrangement(isLayoutMarginsRelativeArrangement)
        XCTAssertEqual(stackView.isLayoutMarginsRelativeArrangement, isLayoutMarginsRelativeArrangement)
    }
}
