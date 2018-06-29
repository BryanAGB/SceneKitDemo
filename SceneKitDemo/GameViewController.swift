//
//  GameViewController.swift
//  SceneKitDemo
//
//  Created by Bryan Mansell on 28/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    var sceneView: SCNView!
    var scene: SCNScene!
    var cameraNode: SCNNode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        sceneView = view as! SCNView
        setupScene()
    }
    
    func setupScene() {
        scene = SCNScene()
        sceneView.scene = scene
        setupCamera()
    }
    
    func setupCamera() {
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        scene.rootNode.addChildNode(cameraNode)
        addSqaure()
    }
    
    func addSqaure() {
        let geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let squareNode = SCNNode(geometry: geometry)
        squareNode.geometry = geometry
        scene.rootNode.addChildNode(squareNode)
    }
    
}
