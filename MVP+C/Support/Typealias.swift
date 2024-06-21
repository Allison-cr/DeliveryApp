//
//  Typealias.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import Foundation
import UIKit

typealias EmptyClosure = () -> Void
typealias СollectionDataSource = UICollectionViewDiffableDataSource<CategoryModel.Section, CategoryModel.Card>
typealias СollectionSnapShot = NSDiffableDataSourceSnapshot<CategoryModel.Section, CategoryModel.Card>
typealias CollectionDataSource = UICollectionViewDiffableDataSource<CardModel.Section, CardModel.IngredientsCell>
typealias CollectionSnapShot = NSDiffableDataSourceSnapshot<CardModel.Section, CardModel.IngredientsCell>
