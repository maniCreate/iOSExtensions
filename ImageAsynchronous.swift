//
//  ImageAsynchronous.swift
//  NSCacheを用いた画像の非同期処理を行うExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

extension UIImageView {
    
    static let imageCache = NSCache<AnyObject, AnyObject>()
    
    func setImage(fromUrl: String?) {
        
        //URLがnilだった場合はdefaultの画像をセットする
        guard let urlString = fromUrl else {
            self.image = UIImage(named: "default")
            return
        }
        
        //キャッシュされているURLならば、その中から画像を取り出してセットする
        if let cacheImage = UIImageView.imageCache.object(forKey: fromUrl as AnyObject) as? UIImage {
            self.image = cacheImage
            return
        }
        
        let imageUrl = URL(string: urlString)
        
        DispatchQueue.global().async {
            
            do {
                
                //まだ一度も取得していない画像をURLから画像を取得し、キャッシュする
                let data = try Data(contentsOf: imageUrl!)
                let image = UIImage(data: data)
                
                UIImageView.imageCache.setObject(image!, forKey: fromUrl as AnyObject)
                
                DispatchQueue.main.async {
                    self.image = image
                }
                
            } catch let error {
                
                //エラーの場合にはdefaultの画像をセットする
                print("Error : \(error.localizedDescription)")
                self.image = UIImage(named: "default")
                
            }
            
        }
        
    }
    
}
