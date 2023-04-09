//
//  TextFieldContentView.swift
//  Today
//
//  Created by Felipe Christian Lautenschlager on 10/04/2023.
//

import UIKit

class TextFieldContentView: UIView, UIContentView {
    struct Confituration: UIContentConfiguration {
        var text: String? = ""

        func makeContentView() -> UIView & UIContentView {
            return TextFieldContentView(self)
        }
    }

    let textField = UITextField()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }

    override var intrinsicContentSize: CGSize {
        CGSize(width: 0, height: 44)
    }

    init(_ configuration: UIContentConfiguration) {
        self.configuration = configuration
        super.init(frame: .zero)
        addPinnedSubview(textField, insets: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        textField.clearButtonMode = .whileEditing
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Confituration else { return }
        textField.text = configuration.text
    }
}

extension UICollectionViewListCell {
    func textFieldConfiguration() -> TextFieldContentView.Confituration {
        TextFieldContentView.Confituration()
    }
}
