//
//  Example4-ImagePicker.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 21.08.20.
//

import SwiftUI

// NOTE: If you want to use the Camera, do not forget to set the "Privacy - Camera Usage Description" in the Info.plist

struct Example4_ImagePicker: View {
    @State private var showSheet = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var image = UIImage()
    
    var body: some View {
        VStack {
            
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
            
            Button(action: {
                showSheet = true
                sourceType = UIImagePickerController.SourceType.camera
            }) {
                HStack {
                    Image(systemName: "camera")
                    Text("Camera")
                }.padding()
            }
            
            
            Button(action: {
                showSheet = true
                sourceType = UIImagePickerController.SourceType.photoLibrary
            }) {
                HStack {
                    Image(systemName: "photo")
                    Text("Photo library")
                }.padding()
            }
            
        }
        .sheet(isPresented: $showSheet) {
            ImagePicker(sourceType: sourceType, selectedImage: $image)
        }
    }
    
    
}

struct ImagePicker: UIViewControllerRepresentable {
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) private var presentationMode
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}


struct Example4_ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        Example4_ImagePicker()
    }
}
