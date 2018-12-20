//
//  UICollectionView+ApplyStyle.swift
//  ApplyStyleKit
//
//  Created by shindyu on 2018/12/20.
//  Copyright © 2018年 shindyu. All rights reserved.
//

extension StyleObject where Base: UICollectionView {
    @discardableResult public func collectionViewLayout(_ layout: UICollectionViewLayout) -> StyleObject {
        base.collectionViewLayout = layout
        return self
    }

    @discardableResult public func delegate(_ delegate: UICollectionViewDelegate) -> StyleObject {
        base.delegate = delegate
        return self
    }

    @discardableResult public func dataSource(_ dataSource: UICollectionViewDataSource) -> StyleObject {
        base.dataSource = dataSource
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult public func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching) -> StyleObject {
        base.prefetchDataSource = prefetchDataSource
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult public func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> StyleObject {
        base.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult public func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate) -> StyleObject {
        base.dragDelegate = dragDelegate
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult public func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate) -> StyleObject {
        base.dropDelegate = dropDelegate
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult public func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> StyleObject {
        base.dragInteractionEnabled = dragInteractionEnabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult public func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> StyleObject {
        base.reorderingCadence = reorderingCadence
        return self
    }

}
