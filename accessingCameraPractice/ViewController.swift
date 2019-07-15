//
//  ViewController.swift
//  accessingCameraPractice
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    //imagePicker this is an object where we can access to store our photos/take photos within the class image picker controller

    override func viewDidLoad() {
        super.viewDidLoad()
       imagePicker.delegate = self
        //this tells our object that any info (aka photos) is going back to this class (self)
    }

    @IBAction func photoLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        //this allows us to open our camera
        
        present(imagePicker, animated: true, completion: nil)
        //present is a built in func in apple that allows us to access our camera info and the animated allows for a smooth transition if we set it to true and cmpletion means that we exit out after we choose nil
     
    }
    
    @IBOutlet weak var newImage: UIImageView!
    
//    internal func imagePickerControllerDidCancel(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
//
//        //the selected image will replace the stock photo in our image view with the followingcode:
//        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {newImage.Image = selectedImage}
//        imagePicker.dismiss(animated: true, completion: nil)
    //}
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        //the selected Image will replace the stock photo in our Image View with the following code:
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { newImage.image =  selectedImage}
        imagePicker.dismiss(animated: true, completion: nil) }

}




