//
//  OracaoVC.swift
//  myBible
//
//  Created by Fabio Makihara on 25/02/21.
//

import UIKit
import CoreData

class OracaoVC: UIViewController {
    
    @IBOutlet weak var oracoesTableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var oracao:[PedidosDeOracao]?
    
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.fetchOracao()
        self.configView()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - configView
    private func configView() {
        self.oracoesTableView.dataSource = self
        self.oracoesTableView.delegate = self
        self.oracoesTableView.register(UINib(nibName: "OracaoCell", bundle: nil), forCellReuseIdentifier: "OracaoCell")
        self.oracoesTableView.tableFooterView = UIView(frame: .zero)
    }
    
    
    // MARK: - fetchOracao
    private func fetchOracao() {
        do {
            let request = PedidosDeOracao.fetchRequest() as NSFetchRequest<PedidosDeOracao>
            let sort = NSSortDescriptor(key: "pedido", ascending: true)
            request.sortDescriptors = [sort]
            
            self.oracao = try self.context.fetch(request)
            DispatchQueue.main.async {
                self.oracoesTableView.reloadData()
            }
        } catch { }
    }
    
    
    // MARK: - IBAction
    @IBAction func addOracaoTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Olá! =)", message: "Adicione um pedido de oração", preferredStyle: .alert)
        alert.addTextField()
        
        let buttonOK = UIAlertAction(title: "OK", style: .default) { (action) in
            let oracaoTextField = alert.textFields![0]
            let novaOracao = PedidosDeOracao(context: self.context)
            
            novaOracao.pedido = oracaoTextField.text ?? ""
            
            do {
                try self.context.save()
            } catch { }
            self.fetchOracao()
        }
        alert.addAction(buttonOK)
        self.present(alert, animated: true, completion: nil)
    }
}


// MARK: - extension TableView
extension OracaoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.oracao?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:OracaoCell? = self.oracoesTableView.dequeueReusableCell(withIdentifier: "OracaoCell", for: indexPath) as? OracaoCell
        cell?.setupOracao(oracao: self.oracao![indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Deletar") { (action, view, completion) in
            let remover = self.oracao![indexPath.row]
            self.context.delete(remover)
            do {
                try self.context.save()
            } catch { }
            self.fetchOracao()
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
}

