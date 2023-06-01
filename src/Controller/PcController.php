<?php

namespace App\Controller;

use App\Entity\Pc;
use App\Repository\PcRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Mapping\Entity;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;
use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

class PcController extends AbstractController
{
    private EntityManagerInterface $entityManager;
    private Environment $twig;

    public function __construct(Environment $twig, EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
        $this->twig = $twig;
    }

    /**
     * @throws TransportExceptionInterface
     */
    #[Route('/pc', name: 'pc')]
    public function index(Environment $twig, PcRepository $pcRepository): Response
    {

        $pc = $pcRepository->findAll();


        return new Response($twig->render('pc/index.html.twig',
            [
                'pc'=> $pc,
                'pcs' => $pc
            ]
        ));

    }

    /**
     * @throws SyntaxError
     * @throws RuntimeError
     * @throws LoaderError
     */
    #[Route('/pc/{id}', name: 'pc_details')]
    public function show(Environment $twig,PcRepository $pcRepository,$id):Response
    {
        $detail = $pcRepository->find($id);

        return new Response($twig->render('pc/detail.html.twig',
            ['details'=>$detail]
        ));
    }

}
