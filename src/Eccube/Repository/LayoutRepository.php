<?php

/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Eccube\Repository;

use Eccube\Entity\Layout;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * LayoutRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class LayoutRepository extends AbstractRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Layout::class);
    }

    public function findById($id) 
    {
         return $this->createQueryBuilder('l')
            ->select('l, bp, b')
            ->leftJoin('l.BlockPositions', 'bp')
            ->leftJoin('bp.Block', 'b')
            ->where('l.id = :layout_id')
            ->orderBy('bp.block_row', 'ASC')
            ->setParameter('layout_id', $id)
            ->getQuery()
            ->getSingleResult();
    }

}
