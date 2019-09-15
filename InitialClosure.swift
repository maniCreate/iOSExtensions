//
//  InitialClosure.swift
//  初回だけ処理を行いたい時に使用するClosure
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation

private lazy var InitialClosure: (()->Void)? = {
    //ViewDidLayoutSubviewsの中で１度だけ実行されるコード
    print("２回目以降は出力されない")
    //１度実行された直後にnilを返すため2回目以降は実行されない
    return nil
}()
