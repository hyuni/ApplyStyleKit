//
//  UIStackView+ApplyStyle.swift
//  ApplyStyleKit
//
//  Created by 新堂 敬隆 on 2018/12/18.
//  Copyright © 2018年 shindyu. All rights reserved.
//

import UIKit

extension StyleObject where Base: UIStackView {
    @discardableResult func addArrangedSubview(_ view: UIView) -> StyleObject {
        base.addArrangedSubview(view)
        return self
    }

    @discardableResult func removeArrangedSubview(_ view: UIView) -> StyleObject {
        base.removeArrangedSubview(view)
        return self
    }

    @discardableResult func insertArrangedSubview(_ view: UIView, at stackIndex: Int) -> StyleObject {
        base.insertArrangedSubview(view, at: stackIndex)
        return self
    }

    @discardableResult func axis(_ axis: NSLayoutConstraint.Axis) -> StyleObject {
        base.axis = axis
        return self
    }

    @discardableResult func distribution(_ distribution: UIStackView.Distribution) -> StyleObject {
        base.distribution = distribution
        return self
    }

    @discardableResult func alignment(_ alignment: UIStackView.Alignment) -> StyleObject {
        base.alignment = alignment
        return self
    }

    @discardableResult func spacing(_ spacing: CGFloat) -> StyleObject {
        base.spacing = spacing
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> StyleObject {
        base.setCustomSpacing(spacing, after: arrangedSubview)
        return self
    }

//    @discardableResult func customSpacing(after arrangedSubview: UIView) -> StyleObject {
//
//    }

    @discardableResult func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> StyleObject {
        base.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }

    @discardableResult func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> StyleObject {
        base.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
}
